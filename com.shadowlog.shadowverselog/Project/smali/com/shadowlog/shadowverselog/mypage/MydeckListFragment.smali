.class public Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
.super Landroid/support/v4/app/Fragment;
.source "MydeckListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/MydeckStruct;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mydeckListAdapter:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

.field private view:Landroid/view/View;

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->dList:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->flag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->dList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->mydeckListAdapter:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    .param p1, "x1"    # Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->mydeckListAdapter:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    .locals 2

    .prologue
    .line 48
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;-><init>()V

    .line 49
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 180
    return-void
.end method

.method public onClickButtonCallback(II)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "arg"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f070086

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 148
    const-string v3, "MydeckListFragment"

    const-string v4, "onClickButtonCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 151
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 152
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-static {p2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->newInstances(I)Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    invoke-virtual {v2, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 157
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-static {p2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->newInstances(I)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 162
    invoke-virtual {v2, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 163
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    invoke-direct {v0, v1}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 169
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v6}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v3, p2, v5, v5}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onRedirectLoad(III)V

    .line 170
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v0, "MydeckListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f070016

    .line 69
    const-string v0, "MydeckListFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v0, 0x7f09003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    .line 71
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->flag:Z

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    const v1, 0x7f0701c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 90
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 92
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "MydeckListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 217
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "MydeckListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "MydeckListFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 199
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "MydeckListFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 193
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "MydeckListFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 187
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "MydeckListFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 205
    return-void
.end method

.method public updateListData()V
    .locals 3

    .prologue
    .line 100
    const-string v1, "MydeckListFragment"

    const-string v2, "updateListData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->view:Landroid/view/View;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 103
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;Landroid/widget/ListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method
