<?php

namespace App\Livewire;
use App\Models\ProductStyle as ModelsProductStyle;
use Livewire\Component;

class ProductStyle extends Component
{
    public $message = null;
    public $product_styles = [];

    public function mount()
    {
        $this->product_styles = ModelsProductStyle::all()->toArray();
    }

    public function update()
    {
        foreach ($this->product_styles as $index => $product_style) {
            $style = ModelsProductStyle::find($product_style['id']);
            if ($style) {
                $style->update($product_style);
            }
        }

        $this->message = 'Product Style Updated Successfully';
        $this->dispatch('message-sent');

    }

    public function render()
    {

        
        return view('livewire.product-style');
    }
}
