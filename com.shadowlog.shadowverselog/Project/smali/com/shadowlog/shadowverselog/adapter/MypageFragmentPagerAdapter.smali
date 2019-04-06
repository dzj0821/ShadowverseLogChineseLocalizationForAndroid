.class public Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MypageFragmentPagerAdapter.java"


# instance fields
.field private manager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->manager:Landroid/support/v4/app/FragmentManager;

    .line 24
    return-void
.end method


# virtual methods
.method public findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "position"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;-><init>()V

    goto :goto_0

    .line 32
    :pswitch_1
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;-><init>()V

    goto :goto_0

    .line 34
    :pswitch_2
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;-><init>()V

    goto :goto_0

    .line 36
    :pswitch_3
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_4
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;-><init>()V

    goto :goto_0

    .line 40
    :pswitch_5
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_6
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;-><init>()V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 74
    const-string v0, ""

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "\u3042\u306a\u305f\u306e\u6226\u7e3e"

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "\u3042\u306a\u305f\u306e\u52dd\u7387"

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v0, "\u30de\u30a4\u30c7\u30c3\u30ad"

    goto :goto_0

    .line 64
    :pswitch_3
    const-string v0, "\u30c7\u30c3\u30ad\u5225\u89e3\u6790"

    goto :goto_0

    .line 66
    :pswitch_4
    const-string v0, "2Pick\u6226\u7e3e"

    goto :goto_0

    .line 68
    :pswitch_5
    const-string v0, "\u5bfe\u6226\u89e3\u6790\u30ed\u30b0"

    goto :goto_0

    .line 72
    :pswitch_6
    const-string v0, "\u30a2\u30d7\u30ea\u306b\u3064\u3044\u3066"

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
