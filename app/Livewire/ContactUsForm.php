<?php

namespace App\Livewire;

use App\Filament\Resources\ContactUsWebform\Model\ContactUsWebform;
use App\Filament\Resources\DropdownList\Model\DropdownList;
use Illuminate\Validation\Rule;

class ContactUsForm extends BaseForm
{
    public $mainModel = ContactUsWebform::class;


    public $subject = "Contact Us Form";
    public $emailList = "";

    public $first_name, $last_name, $company, $product, $email, $phone, $internation_phone_country, $message, $captcha;

    public array $productOptions = [];

    public $mailData = [];

    public $exclude = ["id"];

    public $time = ["created_at"];

    // public $relation =
    // [
    //     'reason_to_contact_id ' =>
    //     [
    //         "key" => "Resoan To Contact",
    //         "relation" => "reasonToContact",
    //         "relationTitle" => "title"
    //     ]

    // ];


    public function mount()
    {
        if (empty($this->internation_phone_country)) {
            $this->internation_phone_country = 'LB';
        }

        $this->productOptions = DropdownList::activeWithCategory(DropdownList::Contact_Us_CATEGORY)
            ->get()
            ->mapWithKeys(function ($item) {
                return [$item->title => $item->title];
            })
            ->all();
    }


    public function setEmailList()
    {
        $this->emailList = setting("site.contact_us_email_list");
    }



    public function rules()
    {
        return
            [
                'first_name' => ['required', 'min:3', 'max:255', 'regex:/^(?:[a-zA-Z ]+|[\p{Arabic} ]+)$/u', 'not_regex:/<[^b][^r][^>]*>/'],
                'last_name' => ['required', 'min:3', 'max:255', 'regex:/^(?:[a-zA-Z ]+|[\p{Arabic} ]+)$/u', 'not_regex:/<[^b][^r][^>]*>/'],
                'email' => ['required', 'max:255', 'email:filter', 'not_regex:/<[^b][^r][^>]*>/'],
                'internation_phone_country' => ['nullable', 'string', 'size:2'],
                'phone' => ['required', 'regex:/^\+961(?:\s?\d){7,8}$/', 'not_regex:/<[^b][^r][^>]*>/'],
                'company' => ['nullable', 'string', 'max:255', 'not_regex:/<[^b][^r][^>]*>/'],
                'product' => ['required', 'string', 'min:2', 'max:255', Rule::in(array_keys($this->productOptions)), 'not_regex:/<[^b][^r][^>]*>/'],
                'message' => ['nullable', 'min:3', 'max:65535', 'not_regex:/<[^b][^r][^>]*>/'],
                'captcha' => ['nullable'],
            ];
    }

    public function render()
    {
        return view('livewire.contact-us-form');
    }
}
