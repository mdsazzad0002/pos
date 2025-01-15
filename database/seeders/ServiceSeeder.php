<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'icon_class' => 'bi bi-activity',
                'title' => 'Nesciunt Mete asd',
                'short_description' => 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.',
                'status' => 1,
                'slug' => 'https://dengrweb.com'
            ],
            [
                'icon_class' => 'bi bi-broadcast',
                'title' => 'Nesciunt Mete dfs',
                'short_description' => 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.',
                'status' => 1,
                'slug' => 'https://dengrweb.com'
            ],
            [
                'icon_class' => 'bi bi-easel',
                'title' => 'Nesciunt Met df e',
                'short_description' => 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.',
                'status' => 1,
                'slug' => 'https://dengrweb.com'
            ],
            [
                'icon_class' => 'bi bi-bounding-box-circles',
                'title' => 'Nesciunt Mete sdfsd',
                'short_description' => 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.',
                'status' => 1,
                'slug' => 'https://dengrweb.com'
            ],
            [
                'icon_class' => 'bi bi-chat-square-text',
                'title' => 'Nesciunt Mete dfdgd',
                'short_description' => 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.',
                'status' => 1,
                'slug' => 'https://dengrweb.com'
            ],
        ];

        foreach($data as $item){
            $service = Service::where('title', $item['title'])->first();
            if(!$service){
                $service =  new Service;
            }
            $service->icon_class = $item['icon_class'];
            $service->title = $item['title'];
            $service->short_description = $item['short_description'];
            $service->description = $item['short_description'];
            $service->slug = Str::slug($item['title']);
            $service->status = $item['status'];
            $service->save();
        }
    }
}
