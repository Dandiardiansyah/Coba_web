<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class AdminSeeder extends Seeder
{
    public function run(): void
    {
        // Membuat user admin (jika belum ada)
        $admin = User::firstOrCreate([
            'email' => 'admin@example.com',
        ], [
            'name' => 'Administrator',
            'password' => bcrypt('password'), // Ganti sesuai kebutuhan
        ]);

        // Membuat role admin
        $role = Role::firstOrCreate(['name' => 'admin']);

        // Mengambil semua permission dari tabel permissions
        $permissions = Permission::pluck('name')->toArray();

        // Memberikan semua permission ke role admin
        $role->syncPermissions($permissions);

        // Memberikan role admin ke user admin
        $admin->assignRole($role);
    }
}
