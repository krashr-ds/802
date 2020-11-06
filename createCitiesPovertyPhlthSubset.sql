CREATE TABLE Cities_Poverty_Phlth AS

SELECT 
	 Cities_2019Step1.CountryAbbr,
	 Cities_2019Step1.Latitude, 
	 Cities_2019Step1.Longitude, 
	 Cities_2019Step1.Year,
	 Cities_2019Step1.GeographicLevel, 
	 Cities_2019Step1.Category, 
	 Cities_2019Step1.CategoryID,
	 Cities_2019Step1.Measure, 
	 Cities_2019Step1.MeasureId, 
	 Cities_2019Step1.DataValueTypeID,
	 Cities_2019Step1.Data_Value_Type,
	 Cities_2019Step1.Data_Value_Unit,
	 Cities_2019Step1.Data_Value,
	 PovertyMHI_USCities_CLEAN_MERGED.PovertyPercentAllAges as PovertyPercentAllAges,
	 PovertyMHI_USCities_CLEAN_MERGED.MedianHouseholdIncome as MedianHouseholdIncome,
	 Cities_2019Step1.StateAbbr,
	 Cities_2019Step1.StateName,
	 PovertyMHI_USCities_CLEAN_MERGED.CityName as USCitiesCityName,  
	 Cities_2019Step1.CityName,
	 PovertyMHI_USCities_CLEAN_MERGED.StateCountyName as StateCountyName,
	 PovertyMHI_USCities_CLEAN_MERGED.StateCountyFIPS as StateCountyFIPS,
	 substr(Cities_2019Step1.TractFIPS,6,-5) as PartialTractFIPS,
	 Cities_2019Step1.TractFIPS as FullTractFIPS,
	 substr(Cities_2019Step1.CityFIPS,6,-5) as PartialCityFIPS,
	 Cities_2019Step1.CityFIPS as FullCityFIPS 
FROM Cities_2019Step1 LEFT OUTER JOIN PovertyMHI_USCities_CLEAN_MERGED 
ON Cities_2019Step1.StateAbbr = PovertyMHI_USCities_CLEAN_MERGED.StateAbbr AND 
   ( substr(Cities_2019Step1.TractFIPS,6,-5) = PovertyMHI_USCities_CLEAN_MERGED.StateCountyFIPS OR
     substr(Cities_2019Step1.CityFIPS,6,-5) = PovertyMHI_USCities_CLEAN_MERGED.StateCountyFIPS )
WHERE 	Cities_2019Step1.Year = 2017
        AND Cities_2019Step1.CategoryID = 'HLTHOUT' AND Cities_2019Step1.MeasureId = 'PHLTH';
