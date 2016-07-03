<?php

namespace App\Http\Controllers;

use App\Relationship;
use Illuminate\Http\Request;

use App\Http\Requests;

class RelationshipController extends Controller
{
    public function getAllRelationships()
    {
        $arrRelationship = Relationship::where('active', 1)->get();

        if (empty($arrRelationship)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrRelationship;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function getRelationshipById($intId)
    {
        $arrRelationship = Relationship::where('active', 1)->find($intId);

        if (empty($arrRelationship)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrRelationship;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function createRelationship(Request $request)
    {

        $objRequest = json_decode($request->getContent(), true);

        $objRelationship = new Relationship;

        $objRelationship->user_id_first = $objRequest['user_id_first'];
        $objRelationship->user_id_second = $objRequest['user_id_second'];
        $objRelationship->tag_id = $objRequest['tag_id'];

        $objRelationship->save();

        if (empty($objRelationship->relationship_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['id' => $objRelationship->relationship_id]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

    public function updateRelationship(Request $request)
    {
        $objRequest = json_decode($request->getContent(), true);

        $intId = $objRequest['id'];
        $objRelationship = Relationship::find($intId);

        $objRelationship->user_id_first = $objRequest['user_id_first'];
        $objRelationship->user_id_second = $objRequest['user_id_second'];
        $objRelationship->tag_id = $objRequest['tag_id'];

        $objRelationship->update();

        if (empty($objRelationship->relationship_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['relationship' => $objRelationship]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

    public function deleteRelationship(Request $request)
    {
        $objRequest = json_decode($request->getContent(), true);

        $intId = $objRequest['id'];
        $objRelationship = Relationship::find($intId);

        $objRelationship->active = 0;
        $objRelationship->update();

        if (empty($objRelationship->relationship_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['relationship' => $objRelationship]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }
    
}
