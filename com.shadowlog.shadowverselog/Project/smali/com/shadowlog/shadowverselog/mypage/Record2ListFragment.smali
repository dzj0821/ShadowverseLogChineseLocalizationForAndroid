.class public Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "Record2ListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private dList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private record2pickListAdapter:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->dList:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->flag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->dList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->record2pickListAdapter:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;)Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    .param p1, "x1"    # Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->record2pickListAdapter:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    .locals 2

    .prologue
    .line 49
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;-><init>()V

    .line 50
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public onClickButtonCallback(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "arg"    # I

    .prologue
    .line 162
    const-string v2, "RecordListFragment"

    const-string v3, "onClickButtonCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 166
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 167
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f070086

    invoke-static {p2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->newInstances(I)Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 169
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 172
    .end local v0    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u30e1\u30e2\u3092\u30dd\u30c3\u30d7\u30a2\u30c3\u30d7\u8868\u793a("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string v0, "RecordListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->fm:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f070016

    .line 70
    const-string v0, "RecordListFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v0, 0x7f090040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    .line 72
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->flag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->updateListData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->flag:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    const v1, 0x7f0701c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 91
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 93
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "BlankFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 212
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "RecordListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 206
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "RecordListFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 194
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "RecordListFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 188
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "RecordListFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "RecordListFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 200
    return-void
.end method

.method public updateListData()V
    .locals 3

    .prologue
    .line 101
    const-string v1, "Record2ListFragment"

    const-string v2, "updateListData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->view:Landroid/view/View;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 104
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;Landroid/widget/ListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method
