${set([
  pageTitle = "Identity Dashboard",
  inav = "dashboard"
])}
{{partial "head.tpl"}}

{{verbatim}}
<div class="dashboard container ng-cloak" data-ng-controller="DashboardCtrl">

  <div class="row">
    <div class="title-section span12">
      <h1 class="headline">Dashboard</h1>
    </div>
  </div>

  <div class="row">
    <div class="section section-itemsX span6">
      <h3 class="headline">
        Items X
        <span data-ng-hide="state.items.loading" class="btn-group pull-right">
          <a href="#" class="btn dropdown-toggle" data-toggle="dropdown">
            <i class="icon-reorder"></i>
          </a>
          <ul class="dropdown-menu pull-right">
            <li>
              <a data-ng-click="modals.showAddItem=true"><i class="icon-plus icon-white"></i> Add Item</a>
            </li>
          </ul>
        </span>
        <span data-ng-show="state.items.loading" class="pull-right">
          <span data-spinner="state.items.loading" data-spinner-class="h3-spinner"></span>
        </span>
      </h3>
      <div data-ng-show="!state.items.loading && items.length == 0">
        <p class="center">You have no items for this identity.</p>
        <button
          class="btn btn-success btn-add-item pull-right"
          data-ng-click="modals.showAddItem=true"><i class="icon-plus icon-white"></i> Add Item</button>
      </div>
    </div>

    <div class="section section-itemsY span6">
      <h3 class="headline">
        Items Y
        <span data-ng-hide="state.items.loading" class="btn-group pull-right">
          <a href="#" class="btn dropdown-toggle" data-toggle="dropdown">
            <i class="icon-reorder"></i>
          </a>
          <ul class="dropdown-menu pull-right">
            <li>
              <a data-ng-click="modals.showAddItem=true"><i class="icon-plus icon-white"></i> Add Item</a>
            </li>
          </ul>
        </span>
        <span data-ng-show="state.items.loading" class="pull-right">
          <span data-spinner="state.items.loading" data-spinner-class="h3-spinner"></span>
        </span>
      </h3>
      <div data-ng-show="!state.items.loading && items.length == 0">
        <p class="center">You have no items for this identity.</p>
        <button
          class="btn btn-success btn-add-item pull-right"
          data-ng-click="modals.showAddItem=true"><i class="icon-plus icon-white"></i> Add Item</button>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="section section-recent-items span6">
      <h3 class="headline">
        Recent Items
        <span data-ng-show="state.items.loading" class="pull-right">
          <span data-spinner="state.items.loading" data-spinner-class="h3-spinner"></span>
        </span>
      </h3>
      <div data-ng-show="!state.items.loading && items.length == 0">
        <p class="center">You have no recent items for this identity.</p>
      </div>
    </div>

    <div class="section section-messages span6">
      <h3 class="headline">Messages</h3>
      <p class="center">You have no new messages.</p>
    </div>
  </div>

</div>
{{/verbatim}}

{{partial "demo-warning.tpl"}}

{{partial "foot.tpl"}}
