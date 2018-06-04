<?php
/**
 * This file holds implementation of class with specific purposes.
 */
require 'classes.php';

/**
 * This class is for site.
 */
class site
{
    public function readByLocation($location, $returnType)
    {
        if (isset($location)) {
            try {
                $siteNameList = R::getCol("SELECT name FROM site WHERE location LIKE %$location%");
                if (null !== $siteNameList && count($siteNameList) > 0) {
                    if (isset($returnType) && $returnType == "combo") {
                        //building combo box
                        echo "<option>Available site</option>";
                        for ($counter = 0; $counter < count($siteNameList); $counter++) {
                            echo "<option value='" . $siteNameList[$counter] . "'>" . $siteNameList[$counter] . "</option>";
                        }
                    } else {
                        echo json_encode($siteNameList);
                    }
                }
            } catch (Exception $exc) {
                error_log("ERROR(readByLocation):" . $exc);
            }
        } else {
            error_log("ERROR(readByLocation): No location specified");
        }
    }

}

/**
 * This class is for schedules.
 */
class schedule
{

    /**
     * This method return all the dates in a schedule by site name
     */
    public function readDatesBySiteName($siteName, $returnType)
    {
        if (isset($siteName)) {
            try {
                $dateList = R::getCol("SELECT date FROM schedule WHERE site_name='$siteName'");
                if (null !== $dateList && count($dateList) > 0) {
                    if (isset($returnType) && $returnType == "combo") {
                        for ($counter = 0; count($dateList) > 0; $counter++) {
                            echo "<option>Available dates</option>";
                            for ($counter = 0; $counter < count($dateList); $counter++) {
                                $today = date("Y-m-d", strtotime('now'));
                                $dateToCheck = strtotime($dateList[$counter]);
                                if ($dateToCheck > $today) {
                                    echo "<option value='" . $dateList[$counter] . "'>" . $dateList[$counter] . "</option>";
                                }
                            }
                        }
                    } else {
                        json_encode($dateList);
                    }
                }
            } catch (Exception $exc) {
                error_log("ERROR(readDatesBySiteName):" . $exc);
            }
        } else {
            error_log("ERROR(readDatesBySiteName): No site name is specified");
        }
    }
}
