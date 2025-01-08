
        <!-- Payment Method -->
        <div class="title-row title-row-2 bg-white mb-16">
            <h5>Payments Methods</h5>
        </div>
        <div class="shipping-radio-container bg-white">
            <form action="javascript:void(0)" method="post" class="contact-form">
                <div class="plans mb-16">
                    <label class="plan basic-plan" for="credit">
                        <input checked type="radio" name="plan" id="credit">
                        <span class="plan-content content-2">
                            <img src="assets/media/icons/payment-card-1.png" alt="">
                            <span class="plan-details">
                                <span class="h6 fw-500 dark-black">Credit or Debit Card</span>
                            </span>
                        </span>
                    </label>
                    <label class="plan basic-plan" for="paypal">
                        <input type="radio" name="plan" id="paypal">
                        <span class="plan-content content-2">
                            <img src="assets/media/icons/payment-card-2.png" alt="">
                            <span class="plan-details">
                                <span class="h6 fw-500 dark-black">Paypal</span>
                            </span>
                        </span>
                    </label>
                </div>

                <div class="plans mb-40">
                    <label class="plan basic-plan" for="bank">
                        <input checked type="radio" name="plan" id="bank">
                        <span class="plan-content content-2">
                            <img src="assets/media/icons/payment-card-3.png" alt="">
                            <span class="plan-details">
                                <span class="h6 fw-500 dark-black">Direct Bank Transfer </span>
                            </span>
                        </span>
                    </label>
                    <label class="plan basic-plan" for="cod">
                        <input type="radio" name="plan" id="cod">
                        <span class="plan-content content-2">
                            <img src="assets/media/icons/payment-card-4.png" alt="">
                            <span class="plan-details">
                                <span class="h6 fw-500 dark-black">Cash on Delivery</span>
                            </span>
                        </span>
                    </label>
                </div>
            </form>

            <h5 class="mb-24">Payments Details</h5>
            <div class="row">
                <div class="col-md-6">
                    <div class="input-block mb-16">
                        <input type="number" name="name" id="name01" class="form-control" placeholder="First Name">
                        <svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewBox="0 0 21 20" fill="none">
                            <path
                                d="M10.5 0C7.59223 0 5.22656 2.36566 5.22656 5.27344C5.22656 8.18121 7.59223 10.5469 10.5 10.5469C13.4078 10.5469 15.7734 8.18121 15.7734 5.27344C15.7734 2.36566 13.4078 0 10.5 0ZM10.5 9.375C8.2384 9.375 6.39844 7.53504 6.39844 5.27344C6.39844 3.01184 8.2384 1.17188 10.5 1.17188C12.7616 1.17188 14.6016 3.01184 14.6016 5.27344C14.6016 7.53504 12.7616 9.375 10.5 9.375Z"
                                fill="#141516" />
                            <path
                                d="M17.0612  13.992C15.6174 12.5261 13.7035 11.7188 11.6719 11.7188H9.32812C7.29656 11.7188 5.38258 12.5261 3.93883 13.992C2.50215 15.4507 1.71094 17.3763 1.71094 19.4141C1.71094 19.7377 1.97328 20 2.29688 20H18.7031C19.0267 20 19.2891 19.7377 19.2891 19.4141C19.2891 17.3763 18.4979 15.4507 17.0612 13.992ZM2.90859 18.8281C3.20215 15.5045 5.96918 12.8906 9.32812 12.8906H11.6719C15.0308 12.8906 17.7979 15.5045 18.0914 18.8281H2.90859Z"
                                fill="#141516" />
                        </svg>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-block mb-16">
                        <input type="text" name="lstName" id="nameLast" class="form-control" placeholder="Last Name">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink">
                            <rect width="20" height="20" fill="url(#pattern0_8194_6745)" />
                            <defs>
                                <pattern id="pattern0_8194_6745" patternContentUnits="objectBoundingBox" width="1" height="1">
                                    <use xlink:href="#image0_8194_6745" transform="scale(0.0416667)" />
                                </pattern>
                                <image id="image0_8194_6745" width="24" height="24"
                                    xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAOLAAADiwF1yxf7AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAANZJREFUSInt1L1NA0EQhuHnTshHRAXYKQU4c0wRroIUEiKcmIgu3AF/dkwLQEwHBHBny7KDncBYQABrCYl7pZVmRtpvZrTaj5a/QA/3aLDKdBrcoVuE+AIjzDMN3cE5SqgxyCS8yQB1iUpaKTcNqnIHwh9oG/yDBntb+SmOI37GGSbYj9pVDHUSeY0hxjiK2hSXXzV42Iif8IZrHEgW8IgiRAq84h0zvHyiQVzsf7PlT+ljVYoft4MGFZpCcr0lLuQzu0oyO9DFrfRguey6xg0OMw3c8gvWwIxMn9PVxawAAAAASUVORK5CYII=" />
                            </defs>
                        </svg>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-block mb-16">
                        <input type="text" name="date" id="checkIn" class="form-control sel-input date_from" placeholder="Select Date">
                        <svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewBox="0 0 21 20" fill="none">
                            <g clip-path="url(#clip0_7968_54156)">
                                <path
                                    d="M6.34766 9.72656H5.09766C4.77406 9.72656 4.51172 9.98891 4.51172 10.3125C4.51172 10.6361 4.77406 10.8984 5.09766 10.8984H6.34766C6.67125 10.8984 6.93359 10.6361 6.93359 10.3125C6.93359 9.98891 6.67125 9.72656 6.34766 9.72656Z"
                                    fill="#141516" />
                                <path
                                    d="M6.34766 12.2266H5.09766C4.77406 12.2266 4.51172 12.4889 4.51172 12.8125C4.51172 13.1361 4.77406 13.3984 5.09766 13.3984H6.34766C6.67125 13.3984 6.93359 13.1361 6.93359 12.8125C6.93359 12.4889 6.67125 12.2266 6.34766 12.2266Z"
                                    fill="#141516" />
                                <path
                                    d="M6.34766 14.7266H5.09766C4.77406 14.7266 4.51172 14.9889 4.51172 15.3125C4.51172 15.6361 4.77406 15.8984 5.09766 15.8984H6.34766C6.67125 15.8984 6.93359 15.6361 6.93359 15.3125C6.93359 14.9889 6.67125 14.7266 6.34766 14.7266Z"
                                    fill="#141516" />
                                <path
                                    d="M11.3477 9.72656H10.0977C9.77406 9.72656 9.51172 9.98891 9.51172 10.3125C9.51172 10.6361 9.77406 10.8984 10.0977 10.8984H11.3477C11.6713 10.8984 11.9336 10.6361 11.9336 10.3125C11.9336 9.98891 11.6713 9.72656 11.3477 9.72656Z"
                                    fill="#141516" />
                                <path
                                    d="M11.3477 12.2266H10.0977C9.77406 12.2266 9.51172 12.4889 9.51172 12.8125C9.51172 13.1361 9.77406 13.3984 10.0977 13.3984H11.3477C11.6713 13.3984 11.9336 13.1361 11.9336 12.8125C11.9336 12.4889 11.6713 12.2266 11.3477 12.2266Z"
                                    fill="#141516" />
                                <path
                                    d="M11.3477 14.7266H10.0977C9.77406 14.7266 9.51172 14.9889 9.51172 15.3125C9.51172 15.6361 9.77406 15.8984 10.0977 15.8984H11.3477C11.6713 15.8984 11.9336 15.6361 11.9336 15.3125C11.9336 14.9889 11.6713 14.7266 11.3477 14.7266Z"
                                    fill="#141516" />
                                <path
                                    d="M16.3477 9.72656H15.0977C14.7741 9.72656 14.5117 9.98891 14.5117 10.3125C14.5117 10.6361 14.7741 10.8984 15.0977 10.8984H16.3477C16.6713 10.8984 16.9336 10.6361 16.9336 10.3125C16.9336 9.98891 16.6713 9.72656 16.3477 9.72656Z"
                                    fill="#141516" />
                                <path
                                    d="M16.3477 12.2266H15.0977C14.7741 12.2266 14.5117 12.4889 14.5117 12.8125C14.5117 13.1361 14.7741 13.3984 15.0977 13.3984H16.3477C16.6713 13.3984 16.9336 13.1361 16.9336 12.8125C16.9336 12.4889 16.6713 12.2266 16.3477 12.2266Z"
                                    fill="#141516" />
                                <path
                                    d="M16.3477 14.7266H15.0977C14.7741 14.7266 14.5117 14.9889 14.5117 15.3125C14.5117 15.6361 14.7741 15.8984 15.0977 15.8984H16.3477C16.6713 15.8984 16.9336 15.6361 16.9336 15.3125C16.9336 14.9889 16.6713 14.7266 16.3477 14.7266Z"
                                    fill="#141516" />
                                <path
                                    d="M18.9648 2.53906H17.5586V1.5625C17.5586 1.23891 17.2962 0.976562 16.9727 0.976562C16.6491 0.976562 16.3867 1.23891 16.3867 1.5625V2.53906H11.3086V1.5625C11.3086 1.23891 11.0463 0.976562 10.7227 0.976562C10.3991 0.976562 10.1367 1.23891 10.1367 1.5625V2.53906H5.05859V1.5625C5.05859 1.23891 4.79625 0.976562 4.47266 0.976562C4.14906 0.976562 3.88672 1.23891 3.88672 1.5625V2.53906H2.48047C1.51121 2.53906 0.722656 3.32762 0.722656 4.29688V17.2656C0.722656 18.2349 1.51121 19.0234 2.48047 19.0234H18.9648C19.9341 19.0234 20.7227 18.2349 20.7227 17.2656C20.7227 16.8874 20.7227 4.62598 20.7227 4.29688C20.7227 3.32762 19.9341 2.53906 18.9648 2.53906ZM1.89453 4.29688C1.89453 3.97379 2.15738 3.71094 2.48047 3.71094H3.88672V4.6875C3.88672 5.01109 4.14906 5.27344 4.47266 5.27344C4.79625 5.27344 5.05859 5.01109 5.05859 4.6875V3.71094H10.1367V4.6875C10.1367 5.01109 10.3991 5.27344 10.7227 5.27344C11.0463 5.27344 11.3086 5.01109 11.3086 4.6875V3.71094H16.3867V4.6875C16.3867 5.01109 16.6491 5.27344 16.9727 5.27344C17.2962 5.27344 17.5586 5.01109 17.5586 4.6875V3.71094H18.9648C19.2879 3.71094 19.5508 3.97379 19.5508 4.29688V6.60156H1.89453V4.29688ZM18.9648 17.8516H2.48047C2.15738 17.8516 1.89453 17.5887 1.89453 17.2656V7.77344H19.5508V17.2656C19.5508 17.5887 19.2879 17.8516 18.9648 17.8516Z"
                                    fill="#141516" />
                            </g>
                            <defs>
                                <clipPath id="clip0_7968_54156">
                                    <rect width="20" height="20" fill="white" transform="translate(0.5)" />
                                </clipPath>
                            </defs>
                        </svg>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-block mb-16">
                        <input type="number" name="cvv" id="cvvCode" class="form-control" placeholder="CVV Code">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink">
                            <rect width="20" height="20" fill="url(#pattern0_8194_6746)" />
                            <defs>
                                <pattern id="pattern0_8194_6746" patternContentUnits="objectBoundingBox" width="1" height="1">
                                    <use xlink:href="#image0_8194_6746" transform="scale(0.0416667)" />
                                </pattern>
                                <image id="image0_8194_6746" width="24" height="24"
                                    xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAsQAAALEBxi1JjQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAFFSURBVEiJ7dU7L4RBFMbx37uIFRqVawiFIBFfQESpoUOrUaiQUJKgkahFKfEVXBqFRiNUQnQUSNRConEp3llZu+uSGI14qjPnzPyfnDPz5uVfXyhBOxbQFJl9jaUExzjDdmSDIXTCExojwwXmUzkymMR9ZIMaZMrDohePkQ2yueAFdZHhAvMl8wvgd/rMoAy1qAjrbF4tF1dKn3qOVaGESo1oGQ+hto4G3AZwNsT12MREODOP1TxGXThfZDCCC3QXmJ5gFGM4DblxHIYuLjD4HYM1LJbodA472MVsyFXjDtO4kY71S4MZ7CueZ730KT+GOKeNkFsp2P+hQRUOcIk9TOXVtrFVABoIjK7vGpC22i+9j568fCtaCvYm6FOsTw1i6O1De/b+cmKpDM8JjnCueLY/1TA6ErRJfzjNkQ2usBSZ+Rf1Cta3QY6cqXP9AAAAAElFTkSuQmCC" />
                            </defs>
                        </svg>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="d-flex align-items-center gap-8">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                            <g clip-path="url(#clip0_7968_54161)">
                                <path
                                    d="M18.0132 3.23975C17.0084 2.89459 16.2035 2.08511 15.8598 1.07437C15.6413 0.431671 15.0397 0 14.3625 0H5.63751C4.96048 0 4.35867 0.431671 4.14017 1.07437C3.79654 2.08511 2.99164 2.89459 1.98685 3.23975C1.3475 3.45947 0.917969 4.06296 0.917969 4.74152V6.9487C0.917969 9.82895 1.78101 12.6022 3.41385 14.9689C4.90784 17.1342 6.96655 18.8287 9.36768 19.8694C9.56863 19.9565 9.78424 20 10 20C10.2156 20 10.4312 19.9565 10.6322 19.8694C13.0333 18.8289 15.092 17.1342 16.586 14.9689C18.2188 12.6022 19.082 9.8288 19.082 6.9487V4.74152C19.082 4.06296 18.6525 3.45947 18.0132 3.23975ZM17.9102 6.9487C17.9102 9.59 17.1187 12.1332 15.6213 14.3034C14.2522 16.288 12.3657 17.8409 10.1662 18.7941C10.0607 18.8399 9.93942 18.84 9.83368 18.7941C7.63397 17.8409 5.74768 16.288 4.37851 14.3034C2.88132 12.1333 2.08984 9.59015 2.08984 6.9487V4.74152C2.08984 4.56329 2.20154 4.40521 2.36771 4.34814C3.71277 3.88596 4.79019 2.80319 5.24963 1.45157C5.30655 1.28433 5.46234 1.17188 5.63751 1.17188H14.3625C14.5375 1.17188 14.6935 1.28433 14.7504 1.45157C15.2098 2.80319 16.2872 3.88596 17.6323 4.34814C17.7985 4.40521 17.9102 4.56329 17.9102 4.74152V6.9487Z"
                                    fill="#141516" />
                                <path
                                    d="M12.4898 7.59705H12.45V5.92834C12.45 4.57748 11.3509 3.47839 10 3.47839C8.64914 3.47839 7.55005 4.57748 7.55005 5.92834V7.59705H7.51022C6.73218 7.59705 6.09924 8.23013 6.09924 9.00818V12.3804C6.09924 13.8293 7.27814 15.0084 8.72696 15.0084H11.273C12.722 15.0084 13.9008 13.8293 13.9008 12.3804V9.00818C13.9008 8.23013 13.2678 7.59705 12.4898 7.59705ZM8.72192 5.92834C8.72192 5.22369 9.29535 4.65027 10 4.65027C10.7047 4.65027 11.2781 5.22369 11.2781 5.92834V7.5972H8.72192V5.92834ZM12.7289 12.3804C12.7289 13.1833 12.0758 13.8364 11.273 13.8364H8.72696C7.92419 13.8364 7.27112 13.1833 7.27112 12.3804V9.00818C7.27112 8.87634 7.37839 8.76907 7.51022 8.76907H12.4898C12.6216 8.76907 12.7289 8.87634 12.7289 9.00818V12.3804Z"
                                    fill="#141516" />
                                <path
                                    d="M10 10.1633C9.67636 10.1633 9.41406 10.4256 9.41406 10.7492V11.8562C9.41406 12.1799 9.67636 12.4422 10 12.4422C10.3236 12.4422 10.5859 12.1799 10.5859 11.8562V10.7492C10.5859 10.4256 10.3236 10.1633 10 10.1633Z"
                                    fill="#141516" />
                            </g>
                            <defs>
                                <clipPath id="clip0_7968_54161">
                                    <rect width="20" height="20" fill="white" />
                                </clipPath>
                            </defs>
                        </svg>
                        <p class="light-gray">Your Transaction is Secured with SSL Encryption</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Payment Method -->
