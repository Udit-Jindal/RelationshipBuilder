<?php

namespace App\Http\Controllers;

use App\Tag;
use Illuminate\Http\Request;

use App\Http\Requests;

class TagController extends Controller
{
    public function getAllTags()
    {
        $arrTag = Tag::where('active', 1)->get();

        if (empty($arrTag)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrTag;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function getTagById($intId)
    {
        $arrTag = Tag::where('active', 1)->find($intId);

        if (empty($arrTag)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrTag;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function getTagByName($strName)
    {
        $arrTag = Tag::where('active', 1)
            ->where('name', $strName)
            ->first();

        if (empty($arrTag)) {
            $intCode = 0;
            $strDescription = 'No record found';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = $arrTag;
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }

    public function createTag(Request $request)
    {

        $objRequest = json_decode($request->getContent(), true);

        $objTag = new Tag;

        $objTag->name = $objRequest['name'];

        $objTag->save();

        if (empty($objTag->tag_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['id' => $objTag->tag_id]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

    public function updateTag(Request $request)
    {
        $objRequest = json_decode($request->getContent(), true);

        $intId = $objRequest['id'];
        $objTag = Tag::find($intId);

        $objTag->name = $objRequest['name'];
        $objTag->update();

        if (empty($objTag->tag_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['tag' => $objTag]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;

    }

    public function deleteTag(Request $request)
    {
        $objRequest = json_decode($request->getContent(), true);

        $intId = $objRequest['id'];
        $objTag = Tag::find($intId);

        $objTag->active = 0;
        $objTag->update();

        if (empty($objTag->tag_id)) {
            $intCode = -1;
            $strDescription = 'Failure';
            $arrData = (object)null;
        } else {
            $intCode = 1;
            $strDescription = 'Success';
            $arrData = array(['tag' => $objTag]);
        }

        $arrResponse['code'] = $intCode;
        $arrResponse['description'] = $strDescription;
        $arrResponse['data'] = $arrData;

        return $arrResponse;
    }
    
}
