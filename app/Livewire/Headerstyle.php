<?php

namespace App\Livewire;

use App\Models\HeaderStyle as ModelsHeaderStyle;
use Livewire\Component;

class Headerstyle extends Component
{
    public $message = null;
    public $header_styles = [];

    public function mount()
    {
        $this->header_styles = ModelsHeaderStyle::all()->toArray();
    }

    public function update()
    {
        foreach ($this->header_styles as $index => $header_style) {
            $style = ModelsHeaderStyle::find($header_style['id']);
            if ($style) {
                $style->update($header_style);
            }
        }

        $this->message = 'Footer Style Updated Successfully';
        $this->dispatch('message-sent');

    }

    public function render()
    {
          return view('livewire.headerstyle');
    }
}
