# letus

A command line tool designed to increase developer productivity. Quickly open Quip docs, create tasks in Asana, and more.

## Quip

```
letus config add quip,mappings rca=https://instacart.quip.com/dmIBAZkADIRn
letus quip rca
```

The link to your Quip doc for RCA items immediately opens in browser. No more wondering if you have it bookmarked in this or that browser, or starred in quip, or whatever.

## Asana

```
 ~/git/letus master > cat ~/.letus.config.edn
{:quip
 {:api-key "TOKEN HERE" ; generate one here: https://instacart.quip.com/api/personal-token
 :mappings
  {}}
 :asana
  {:api-key "YOUR KEY HERE", ; to generate an api-key, go to Asana.com top right -> My Profile Settings -> Apps -> Manage Developer Apps -> Personal Access Tokens -> click on Create New Personal Access Token
   :user-id YOUR_ID, ; To find your user-id and name go to https://app.asana.com/api/1.0/users/me
   :user-name "Jack Dempsey",
   :workspace-id WORKSPACE_ID, ; Go to https://app.asana.com/api/1.0/workspaces and find the correct ID
   :status "inbox" ; can be one of {inbox, later, today, upcoming}
   }}
```

Once you have everything setup and the latest bin installed, you can run:

```
 ~/bin > letus asana create-task "this is a real test"
{:modified_at "2016-09-04T18:19:27.323Z", :projects [], :tags [], :workspace {:id HIDDEN, :name "instacart.com"}, :custom_fields [], :parent nil, :hearted false, :completed_at nil, :due_on nil, :name "this is a real test", :completed false, :assignee_status "inbox", :hearts [], :id 176301991053382, :notes "", :memberships [], :due_at nil, :num_hearts 0, :followers [{:id HIDDEN, :name "Jack Dempsey"}], :assignee {:id HIDDEN, :name "Jack Dempsey"}, :created_at "2016-09-04T18:19:27.323Z"}
```

And you'll see the task sitting at the top of your New Tasks list! If you want to type even less, you can of course alias things:

```
~/bin > alias t='letus asana create-task'
~/bin > t "this is another test"
```

Etc.
=======
And you'll see the task sitting at the top of your New Tasks list!
