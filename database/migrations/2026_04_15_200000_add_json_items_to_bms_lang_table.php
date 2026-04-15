<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('bms_lang', function (Blueprint $table) {
            $table->text('json_items')->nullable()->after('content2');
        });
    }

    public function down(): void
    {
        Schema::table('bms_lang', function (Blueprint $table) {
            $table->dropColumn('json_items');
        });
    }
};
