.class public Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecordListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private checkflag:Z

.field private dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/RecordStruct;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private recordListAdapter:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

.field private view:Landroid/view/View;

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->dList:Ljava/util/List;

    .line 45
    iput-boolean v1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->flag:Z

    .line 87
    iput-boolean v1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->checkflag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->dList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->recordListAdapter:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    .param p1, "x1"    # Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->recordListAdapter:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    .locals 2

    .prologue
    .line 54
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;-><init>()V

    .line 55
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->setHasOptionsMenu(Z)V

    .line 178
    return-void
.end method

.method public onClickButtonCallback(III)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "arg"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 148
    const-string v3, "RecordListFragment"

    const-string v4, "onClickButtonCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 151
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 152
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f070086

    invoke-static {p2}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->newInstances(I)Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    move-result-object v4

    const-string v5, "ChildFragment"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 153
    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 167
    .end local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 157
    if-lez p2, :cond_2

    .line 158
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 159
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v6}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v3, p2, v5, v5}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onRedirectLoad(III)V

    .line 160
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 162
    .end local v0    # "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    :cond_2
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 163
    .restart local v0    # "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v6}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v3, v5, p3, v5}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onRedirectLoad(III)V

    .line 164
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v0, "RecordListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iput-object p0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "RecordListFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v0, 0x7f090042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->view:Landroid/view/View;

    .line 77
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->flag:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->view:Landroid/view/View;

    const v1, 0x7f0701c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 81
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 83
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "BlankFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 216
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "RecordListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 210
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "RecordListFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 198
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "RecordListFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 192
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "RecordListFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "RecordListFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 204
    return-void
.end method

.method public updateListData()V
    .locals 3

    .prologue
    .line 92
    const-string v1, "RecordListFragment"

    const-string v2, "updateListData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->view:Landroid/view/View;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 95
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;Landroid/widget/ListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method
