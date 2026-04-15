<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('contact_us_webform', function (Blueprint $table) {
            if (! Schema::hasColumn('contact_us_webform', 'product')) {
                $table->string('product')->nullable()->after('company');
            }

            if (Schema::hasColumn('contact_us_webform', 'position')) {
                $table->dropColumn('position');
            }

            if (Schema::hasColumn('contact_us_webform', 'location')) {
                $table->dropColumn('location');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('contact_us_webform', function (Blueprint $table) {
            if (! Schema::hasColumn('contact_us_webform', 'position')) {
                $table->string('position')->nullable()->after('company');
            }

            if (! Schema::hasColumn('contact_us_webform', 'location')) {
                $table->string('location')->nullable()->after('position');
            }

            if (Schema::hasColumn('contact_us_webform', 'product')) {
                $table->dropColumn('product');
            }
        });
    }
};
