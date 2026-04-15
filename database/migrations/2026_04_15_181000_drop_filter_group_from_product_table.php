<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('product', function (Blueprint $table) {
            if (Schema::hasColumn('product', 'filter_group')) {
                $table->dropIndex(['filter_group']);
                $table->dropColumn('filter_group');
            }
        });
    }

    public function down(): void
    {
        Schema::table('product', function (Blueprint $table) {
            if (!Schema::hasColumn('product', 'filter_group')) {
                $table->string('filter_group')->nullable()->after('sku');
                $table->index('filter_group');
            }
        });
    }
};
