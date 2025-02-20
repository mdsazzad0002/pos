<?php

namespace App\Livewire;

use App\Models\FooterStyle as ModelsFooterStyle;
use Livewire\Component;



class FooterStyle extends Component
{
    public $message = null;
    public $footer_styles = [];

    public function mount()
    {
        $this->footer_styles = ModelsFooterStyle::all()->toArray();
    }

    public function update()
    {
        foreach ($this->footer_styles as $index => $footer_style) {
            $style = ModelsFooterStyle::find($footer_style['id']);
            if ($style) {
                $style->update($footer_style);
            }
        }

        $this->message = 'Footer Style Updated Successfully';
        $this->dispatch('message-sent');

    }

    public function render()
    {
        return view('livewire.footerstyle');
    }
}
