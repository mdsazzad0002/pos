<!-- partial:index.partial.html -->

<div class="main-back">
    <div class="container m-auto bg-white p-5 bod-3">
        <div class="row">
            <!-- CARD FORM -->
            <div class="col-lg-8 col-md-12">
                <form>

                    <div class="card-data flex-fill flex-vertical">
                        <div class="row">
                            <div class="col-12">
                                <div class="header flex-between flex-vertical-center">
                                    <div class="flex-vertical-center">
                                        <i class="fas fa-money-bill-wave"></i>  &nbsp;
                                        <span class="title">
                                            <strong>Payment Method</strong>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            @foreach ($paymentCredentials as $item)
                            <div class="col-md-6 col-lg-4 mb-2">
                                <div class="">
                                    <label class="p-2 border rounded d-flex flex-nowrap align-items-center gap-2 card_border" for="provider{{ $item->id }}">
                                        <input type="radio" id="provider{{ $item->id }}" name="payment_provider"
                                            value="{{ $item->id }}">
                                        <div class="mb-0" >{{ $item->provider }}</div>
                                    </label>
                                </div>
                            </div>
                            @endforeach
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="header flex-between flex-vertical-center">
                                    <div class="flex-vertical-center">
                                        <i class="fas fa-box-open"></i> &nbsp;
                                        <span class="title">
                                            <strong>Courier</strong>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            @foreach ($courierCredentials as $item)
                            <div class="col-md-6 col-lg-4 mb-2">
                                <div class="">
                                    <label class="p-2 border rounded d-flex flex-nowrap align-items-center gap-2 card_border" for="cprovider{{ $item->id }}">
                                        <input type="radio" id="cprovider{{ $item->id }}" name="courier_provider"
                                            value="{{ $item->id }}">
                                        <div class="mb-0" >{{ $item->provider }}</div>
                                    </label>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <!-- Card Field -->
                        <div class="">
                            <label for="note">Note</label>
                            <textarea name="note" placeholder="Note"  id="note"  class="form-control"></textarea>
                        </div>
                        <div class="">
                            <div>
                                <strong>Payment</strong>
                                <strong>Account No.</strong>
                            </div>

                            <input class="form-control" id="phone" type="text" placeholder="Enter your payment Account" />

                        </div>
                    </div>
                    <div class="action flex-center">
                        <div class="row">
                            <div class="col-4">
                                <a href="#" class="btn btn-default fw-semibold mb-0 d-block py-3"
                                    data-dismiss="modal">Cancel</a>
                            </div>
                            <div class="col-8">
                                <button type="submit" class="b-main-color pointer">
                                    Pay Now
                                </button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>

            <!-- SIDEBAR -->
            <div class="col-lg-4 col-md-12 py-5">
                <div></div>
                <div class="purchase-section flex-fill flex-vertical">
                    <div class="card-mockup flex-vertical">
                        <img src="{{ asset('uploads/bg/payment-method-web-banner-4.jpg') }}" alt="">
                    </div>

                    <ul class="purchase-props">
                        <li class="flex-between">
                            <span>Company</span>
                            <strong>Apple</strong>
                        </li>
                        <li class="flex-between">
                            <span>Order number</span>
                            <strong>429252965</strong>
                        </li>
                        <li class="flex-between">
                            <span>Product</span>
                            <strong>MacBook Air</strong>
                        </li>
                        <li class="flex-between">
                            <span>VAT (20%)</span>
                            <strong>$100.00</strong>
                        </li>
                    </ul>
                </div>
                <div class="separation-line"></div>
                <div class="total-section flex-between flex-vertical-center">
                    <div class="flex-fill flex-vertical">
                        <div class="total-label f-secondary-color">You have to Pay</div>
                        <div>
                            <strong>549</strong>
                            <small>.99 <span class="f-secondary-color">USD</span></small>
                        </div>
                    </div>
                    <i class="ai-coin size-lg"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- partial -->

<style>
    :root {
        --field-border: 1px solid #eeeeee;
        --field-border-radius: 0.5em;
        --secondary-text: #aaaaaa;
        --sidebar-color: #f1f1f1;
        --accent-color: #2962ff;
    }

    * {
        box-sizing: border-box;
    }

    .gap-2 {
        gap: 8px;
    }
    .card_border{
        cursor: pointer;
    }
    .card_border:has(input:checked){
        border-color: rgb(3, 138, 179) !important;
    }

    .flex {
        display: flex;
    }


    .flex-fill {
        display: flex;
        flex: 1 1;
    }

    .flex-vertical {
        display: flex;
        flex-direction: column;
    }

    .flex-vertical-center {
        display: flex;
        align-items: center;
    }

    .flex-between {
        display: flex;
        justify-content: space-between;
    }

    .p-sm {
        padding: 0.5em;
    }

    .pl-sm {
        padding-left: 0.5em;
    }

    .pr-sm {
        padding-right: 0.5em;
    }

    .pb-sm {
        padding-bottom: 0.5em;
    }

    .p-md {
        padding: 1em;
    }

    .pb-md {
        padding-bottom: 1em;
    }

    .p-lg {
        padding: 2em;
    }

    .m-md {
        margin: 1em;
    }

    .size-md {
        font-size: 0.85em;
    }

    .size-lg {
        font-size: 1.5em;
    }

    .size-xl {
        font-size: 2em;
    }

    .half-width {
        width: 50%;
    }

    .pointer {
        cursor: pointer;
    }

    .uppercase {
        text-transform: uppercase;
    }

    .ellipsis {
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .f-main-color {
        color: #2962ff;
    }

    .f-secondary-color {
        color: var(--secondary-text);
    }

    .b-main-color {
        background: var(--accent-color);
    }

    .numbers::-webkit-outer-spin-button,
    .numbers::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    body {
        font-size: 14px;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Roboto", "Oxygen",
            "Ubuntu", "Cantarell", "Fira Sans", "Droid Sans", "Helvetica Neue",
            sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    .bod-3 {
        border-radius: 30px;
    }


    .header {
        padding-bottom: 1em;
    }

    .header .title {
        font-size: 1.2em;
    }

    .header .title span {
        font-weight: 300;
    }

    .card-data>div {
        padding-bottom: 1.5em;
    }

    .card-data>div:first-child {
        padding-top: 1.5em;
    }

    .card-property-title {
        display: flex;
        flex-direction: column;
        flex: 1 1;
        margin-right: 0.5em;
    }

    .card-property-title strong {
        padding-bottom: 0.5em;
        font-size: 0.85em;
    }

    .card-property-title span {
        color: var(--secondary-text);
        font-size: 0.75em;
    }

    .card-property-value {
        flex: 1 1;
    }

    .card-number {
        background: #fafafa;
        border: var(--field-border);
        border-radius: var(--field-border-radius);
        padding: 0.5em 1em;
    }

    .card-number-field * {
        line-height: 1;
        margin: 0;
        padding: 0;
    }

    .card-number-field input {
        width: 100%;
        height: 100%;
        padding: 0.5em 1rem;
        margin: 0 0.75em;
        border: none;
        color: #888888;
        background: transparent;
        font-family: inherit;
        font-weight: 500;
    }

    .timer span {
        background: #311b92;
        color: #ffffff;
        width: 1.2em;
        padding: 4px 0;
        display: inline-block;
        text-align: center;
        border-radius: 3px;
    }

    .timer span+span {
        margin-left: 2px;
    }

    .timer em {
        font-style: normal;
    }

    .action button {
        padding: 1.1em;
        width: 100%;
        height: 100%;
        font-weight: 600;
        font-size: 1em;
        color: #ffffff;
        border: none;
        border-radius: 0.5em;
        transition: background-color 0.2s ease-in-out;
    }

    .action button:hover {
        background: #2979ff;
    }

    .input-container {
        position: relative;
        display: flex;
        align-items: center;
        height: 3em;
        overflow: hidden;
        border: var(--field-border);
        border-radius: var(--field-border-radius);
    }

    .input-container input,
    .input-container i {
        line-height: 1;
    }

    .input-container input {
        flex: 1 1;
        height: 100%;
        width: 100%;
        text-align: center;
        border: none;
        border-radius: var(--field-border-radius);
        font-family: inherit;
        font-weight: 800;
        font-size: 0.85em;
    }

    .input-container input:focus {
        background: #e3f2fd;
        color: #283593;
    }

    .input-container input::placeholder {
        color: #ddd;
    }

    .input-container input::-webkit-outer-spin-button,
    .input-container input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    .input-container i {
        position: absolute;
        right: 0.5em;
    }

    .purchase-section {
        position: relative;
        overflow: visible;
        padding: 0 1em 1em 1em;
        background: var(--sidebar-color);
        border-top-left-radius: 0.8em;
        border-top-right-radius: 0.8em;
    }

    .purchase-section:before {
        content: "";
        position: absolute;
        width: 1.6em;
        height: 1.6em;
        border-radius: 50%;
        left: -0.8em;
        bottom: -0.8em;
        background: #ffffff;
    }

    .purchase-section:after {
        content: "";
        position: absolute;
        width: 1.6em;
        height: 1.6em;
        border-radius: 50%;
        right: -0.8em;
        bottom: -0.8em;
        background: #ffffff;
    }

    .card-mockup {
        position: relative;
        margin: 3em 1em 1.5em 1em;
        padding: 1.5em 1.2em;
        border-radius: 0.6em;
        background: #72a2f7;
        color: #fff;
        box-shadow: 0 0.5em 1em 0.125em rgba(0, 0, 0, 0.1);
    }

    .card-mockup:after {
        content: "";
        position: absolute;
        width: 25%;
        top: -0.2em;
        left: 37.5%;
        height: 0.2em;
        background: var(--accent-color);
        border-top-left-radius: 0.2em;
        border-top-right-radius: 0.2em;
    }

    .card-mockup:before {
        content: "";
        position: absolute;
        top: 0;
        width: 25%;
        left: 37.5%;
        height: 0.5em;
        background: #2962ff36;
        border-bottom-left-radius: 0.2em;
        border-bottom-right-radius: 0.2em;
        box-shadow: 0 2px 15px 5px #2962ff4d;
    }

    .purchase-props {
        margin: 0;
        padding: 0;
        font-size: 0.8em;
        width: 100%;
    }

    .purchase-props li {
        width: 100%;
        line-height: 2.5;
    }

    .purchase-props li span {
        color: var(--secondary-text);
        font-weight: 600;
    }

    .separation-line {
        border-top: 1px dashed #aaa;
        margin: 0 0.8em;
    }

    .total-section {
        position: relative;
        overflow: hidden;

        padding: 1em;
        background: var(--sidebar-color);
        border-bottom-left-radius: 0.8em;
        border-bottom-right-radius: 0.8em;
    }

    .total-section:before {
        content: "";
        position: absolute;
        width: 1.6em;
        height: 1.6em;
        border-radius: 50%;
        left: -0.8em;
        top: -0.8em;
        background: #ffffff;
    }

    .total-section:after {
        content: "";
        position: absolute;
        width: 1.6em;
        height: 1.6em;
        border-radius: 50%;
        right: -0.8em;
        top: -0.8em;
        background: #ffffff;
    }

    .total-label {
        font-size: 0.8em;
        padding-bottom: 0.5em;
    }

    .total-section strong {
        font-size: 1.5em;
        font-weight: 800;
    }

    .total-section small {
        font-weight: 600;
    }
</style>
{{-- <script>
    document.addEventListener("DOMContentLoaded", () => {
        const radioButtons = document.querySelectorAll('input[name="payment_provider"]');
        radioButtons.forEach(radio => {
            radio.addEventListener("change", (event) => {
                const selectedId = event.target.value;

                const providers = document.querySelectorAll('.payment-provider');
                providers.forEach(provider => {
                    if (!provider.id.endsWith(selectedId)) {
                        provider.style.display = 'none';
                    }
                });
            });
        });
    });
</script> --}}
<script>
    /* COPY INPUT VALUES TO CARD MOCKUP */
            const bounds = document.querySelectorAll("[data-bound]");

            for (let i = 0; i < bounds.length; i++) {
            const targetId = bounds[i].getAttribute("data-bound");
            const defValue = bounds[i].getAttribute("data-def");
            const targetEl = document.getElementById(targetId);
            bounds[i].addEventListener(
                "blur",
                () => (targetEl.innerText = bounds[i].value || defValue)
            );
            }

            /* TOGGLE CVC DISPLAY MODE */
            const cvc_toggler = document.getElementById("cvc_toggler");

            cvc_toggler.addEventListener("click", () => {
            const target = cvc_toggler.getAttribute("data-target");
            const el = document.getElementById(target);
            el.setAttribute("type", el.type === "text" ? "password" : "text");
            });

            function onlyNumberKey(evt) {
            // Only ASCII character in that range allowed
            var ASCIICode = evt.which ? evt.which : evt.keyCode;
            if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57)) return false;
            return true;
            }

            $(function () {
            $("#cardNumber").on("keyup", function (e) {
                var val = $(this).val();
                var newval = "";
                val = val.replace(/\s/g, "");
                for (var i = 0; i < val.length; i++) {
                if (i % 4 == 0 && i > 0) newval = newval.concat(" ");
                newval = newval.concat(val[i]);
                }
                $(this).val(newval);
            });

            $(".year-own").datepicker({
                minViewMode: 2,
                format: "yyyy"
            });

            $(".month-own").datepicker({
                format: "MM",
                minViewMode: "months",
                maxViewMode: "months",
                startView: "months"
            });
            });

</script>
