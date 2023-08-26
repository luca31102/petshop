<ul class="navbar-nav float-right">
    <!-- ============================================================== -->
    <!-- Search -->
    <!-- ============================================================== -->
    <li class="nav-item d-none d-md-block">
        <a class="nav-link" href="javascript:void(0)">
            <form>
                <div class="customize-input">
                    <input class="form-control custom-shadow custom-radius border-0 bg-white"
                        type="search" placeholder="Search" aria-label="Search">
                    <i class="form-control-icon" data-feather="search"></i>
                </div>
            </form>
        </a>
    </li>
    <!-- ============================================================== -->
    <!-- User profile and search -->
    <!-- ============================================================== -->
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <img src="${classpath}/admin/assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle"
                width="40">
            <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span
                    class="text-dark">${userLogined.username }</span> <i data-feather="chevron-down"
                    class="svg-icon"></i></span>
        </a>
        <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
            <a class="dropdown-item" href="javascript:void(0)"><i data-feather="user"
                    class="svg-icon mr-2 ml-1"></i>
                My Profile</a>
            <a class="dropdown-item" href="javascript:void(0)"><i data-feather="credit-card"
                    class="svg-icon mr-2 ml-1"></i>
                My Balance</a>
            <a class="dropdown-item" href="javascript:void(0)"><i data-feather="mail"
                    class="svg-icon mr-2 ml-1"></i>
                Inbox</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="javascript:void(0)"><i data-feather="settings"
                    class="svg-icon mr-2 ml-1"></i>
                Account Setting</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="${classpath }/logout"><i data-feather="power"
                    class="svg-icon mr-2 ml-1"></i>
                Logout ${userLogined.username }</a>
            <div class="dropdown-divider"></div>
            <div class="pl-4 p-3"><a href="javascript:void(0)" class="btn btn-sm btn-info">View
                    Profile</a></div>
        </div>
    </li>
    <!-- ============================================================== -->
    <!-- User profile and search -->
    <!-- ============================================================== -->
</ul>