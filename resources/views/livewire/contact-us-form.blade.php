<form wire:submit.prevent="submit">
    @csrf
    <x-common.form-success-flush :message="Session::get('success')" />

    <div class="form-row">
        <div class="form-group">
            <label for="cf_first_name">First Name *</label>
            <input type="text" id="cf_first_name" wire:model.blur="first_name" placeholder="Enter your first name" @class(['border-red-500' => $errors->has('first_name')])>
            @error('first_name') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
        </div>
        <div class="form-group">
            <label for="cf_last_name">Last Name *</label>
            <input type="text" id="cf_last_name" wire:model.blur="last_name" placeholder="Enter your last name" @class(['border-red-500' => $errors->has('last_name')])>
            @error('last_name') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
        </div>
    </div>

    <div class="form-group">
        <label for="cf_email">Email Address *</label>
        <input type="email" id="cf_email" wire:model.blur="email" placeholder="Enter your email address" @class(['border-red-500' => $errors->has('email')])>
        @error('email') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <div class="form-group">
        <label for="cf_phone">Phone Number *</label>
        <input type="tel" id="cf_phone" wire:model.blur="phone" placeholder="+961 70 123 456" @class(['border-red-500' => $errors->has('phone')])>
        @error('phone') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <div class="form-group">
        <label for="cf_company">Company Name</label>
        <input type="text" id="cf_company" wire:model.blur="company" placeholder="Your company name" @class(['border-red-500' => $errors->has('company')])>
        @error('company') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <div class="form-group">
        <label for="cf_product">Product of Interest *</label>
        <select id="cf_product" wire:model.blur="product" @class(['border-red-500' => $errors->has('product')])>
            <option value="">Select a category</option>
            @foreach($productOptions as $value => $label)
                <option value="{{ $value }}">{{ $label }}</option>
            @endforeach
        </select>
        @error('product') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <div class="form-group">
        <label for="cf_message">Message</label>
        <textarea id="cf_message" wire:model.blur="message" rows="5" placeholder="Tell us about your labeling requirements..." @class(['border-red-500' => $errors->has('message')])></textarea>
        @error('message') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <div class="form-group" wire:ignore>
        <div id="contact-captcha" class="@error('captcha') is-invalid @enderror"></div>
        @error('captcha') <span class="text-red-600 text-sm">{{ $message }}</span> @enderror
    </div>

    <button type="submit" class="btn btn-primary btn-lg" style="width: 100%; justify-content: center;">
        <i class="fas fa-paper-plane"></i> Send Message
    </button>
</form>
