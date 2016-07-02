<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;

class UserController extends Controller
{

    public function getAllUsers()
    {
        $arrUser = User::where('active', 1)->get();

        if (empty($arrUser)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrUser;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function getUserById($intId)
    {
        $arrUser = User::where('active', 1)->find($intId);

        if (empty($arrUser)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrUser;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function getUserByName($strName)
    {
        $arrUser = User::where('active', 1)
            ->where('name', $strName)
            ->first();

        if (empty($arrUser)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrUser;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function createUser(Request $request)
    {

        $objRequest = json_decode($request->getContent(), true);

        $objUser = new User;

        $objUser->name = $objRequest['name'];

        $objUser->save();

        if (empty($objUser->user_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['id' => $objUser->user_id]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

    public function updateUser(Request $request)
    {
        $objRequest = json_decode($request->getContent(), true);

        $intId = $objRequest['id'];
        $objUser = User::find($intId);

        $objUser->name = $objRequest['name'];
        $objUser->update();

        if (empty($objUser->user_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['user' => $objUser]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

}
