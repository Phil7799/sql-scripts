--Select Timeout dataset code:
select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, sheet_name,RiderMobileNumber,EstimatedDistanceFromRider from 
(select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, RiderMobileNumber,EstimatedDistanceFromRider,
ROW_NUMBER() over (partition by hours, created_on, VehicleType,RiderMobileNumber, MobileNumber, driver_email) as row_number,'Timeout' as sheet_name
from
(select
 CancelledOn as CreatedOn, strftime('%H', CancelledOn) as hours, strftime('%Y-%m-%d', CancelledOn) as created_on,
 upper(VehicleType) as VehicleType, EMailID as driver_email, MobileNumber, CASE CorporateID 
           WHEN '' THEN 'RETAIL TRIP' ELSE 'CORPORATE TRIP' 
       END Trip_Type, City, Country, PickupLatitude, PickupLongitude, CorporateID,RiderMobileNumber,EstimatedDistanceFromRider
       from to2 t))
 where `row_number` = 1
 -- End of timeout code
union
--Select Driver cancellation dataset code:
select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, sheet_name,  RiderMobileNumber,EstimatedDistanceFromRider from
(select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, RiderMobileNumber,EstimatedDistanceFromRider,
ROW_NUMBER() over (partition by hours, created_on, VehicleType, RiderMobileNumber, driver_email) as row_number,'Driver Cancellation' as sheet_name
from
(select CreatedOn, strftime('%H', CreatedOn) as hours, strftime('%Y-%m-%d', CreatedOn) as created_on,
 upper(VehicleType) as VehicleType, EMailID as driver_email, RiderMobileNumber, CASE CorporateID  WHEN '' THEN 'RETAIL TRIP' ELSE 'CORPORATE TRIP' 
       END Trip_Type, City, Country, PickupLatitude, PickupLongitude, CorporateID,EstimatedDistanceFromRider
       from DC2 d))
 where `row_number` = 1
 -- End of Driver Cancellation Code
union 
--Select Rider cancellation dataset code:
select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, sheet_name, RiderNumber as RiderMobileNumber,EstimatedDistanceFromRider from 
(select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, RiderNumber, EstimatedDistanceFromRider,
ROW_NUMBER() over (partition by hours, created_on, VehicleType, RiderNumber, driver_email) as row_number,'Rider Cancellation' as sheet_name
from
(select
 CreatedOn, strftime('%H', CreatedOn) as hours, strftime('%Y-%m-%d', CreatedOn) as created_on,
 upper(VehicleType) as VehicleType, RequestSendToDriver as driver_email, RiderNumber, CASE CorporateID WHEN '' THEN 'RETAIL TRIP' ELSE 'CORPORATE TRIP' 
 END Trip_Type, City, Country, PickupLatitude, PickupLongitude, CorporateID,EstimatedDistanceFromRider 
 from RC2 r)) where `row_number` = 1
 -- End of Rider Cancellation Code
 UNION 
--Select No Drivers Found code:
select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID, sheet_name, MobileNumber as RiderMobileNumber , ' ' as EstimatedDistanceFromRider from
(select CreatedOn, hours, created_on, VehicleType, driver_email, Trip_Type, City, Country, PickupLatitude, 
PickupLongitude, CorporateID,MobileNumber,
ROW_NUMBER() over (partition by hours, created_on, VehicleType, MobileNumber) as row_number,'No Drivers Found' as sheet_name
from 
(select
 CreatedOn, strftime('%H', CreatedOn) as hours, strftime('%Y-%m-%d', CreatedOn) as created_on,
 upper(VEHICLETYPE) as VehicleType, ' ' as driver_email, MobileNumber, 
 CASE CorporateID 
           WHEN '' THEN 'RETAIL TRIP' ELSE 'CORPORATE TRIP' 
       END Trip_Type,  PICKUPCITY as City, PICKUPCOUNTRY as Country, 
       Latitude as  PickupLatitude, Longitude as PickupLongitude, CorporateID
 from ndf2 n))
 where `row_number` = 1;
--End of No Drivers Found Code
