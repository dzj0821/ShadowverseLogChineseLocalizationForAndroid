.class public Lcom/shadowlog/shadowverselog/MyPageActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field public static ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

.field private static mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private static mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private static manager:Landroid/support/v4/app/FragmentManager;


# instance fields
.field public formatSet:Ljava/util/ArrayList;

.field private menuAnalyzeSwitch:Z

.field private mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

.field private newpack_date:J

.field public offline_mode:Z

.field private popLayout:Landroid/widget/LinearLayout;

.field private popLayout2:Landroid/widget/LinearLayout;

.field private popupWin:Landroid/widget/PopupWindow;

.field private popupWin2:Landroid/widget/PopupWindow;

.field public prieodSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

.field private unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x1229

    sput v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->newpack_date:J

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/MyPageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onStartOverRay()V

    return-void
.end method

.method static synthetic access$1000(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/MyPageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->saveAnalyzeDialogData()V

    return-void
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->noCkdItemChecker(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$600(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shadowlog/shadowverselog/MyPageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getPopWindowY()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private getPopWindowY()I
    .locals 4

    .prologue
    .line 966
    const v3, 0x7f07008b

    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 967
    .local v0, "displayViewHeight":I
    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 968
    .local v1, "footerViewHeight":I
    const/16 v2, 0x64

    .line 969
    .local v2, "popupWindowSize":I
    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    return v3
.end method

.method private initPopupWindow()V
    .locals 9

    .prologue
    const v8, 0x7f0700e9

    const v7, 0x7f070040

    const/4 v5, -0x2

    const/4 v6, 0x1

    .line 371
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    .line 374
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f090058

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    .line 377
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 378
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 382
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 383
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 386
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 389
    .local v0, "rGroup":Landroid/widget/RadioGroup;
    const v2, 0x7f0700e7

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 390
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "from"

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->newpack_date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "to"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    .line 397
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->setDatePickerFunction()V

    .line 402
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$5;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$5;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$6;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$6;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 430
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$7;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$7;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 452
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$8;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$8;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 474
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$9;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$9;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 496
    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$10;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$10;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 508
    .local v1, "ranksChked":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 509
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 510
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 511
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070038

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 512
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 513
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 514
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 515
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070035

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 517
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    return-void
.end method

.method private initPopupWindow2()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 895
    const-string v0, "MyPageActivity"

    const-string v1, "initPopupWindow2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    .line 901
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout2:Landroid/widget/LinearLayout;

    .line 904
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 905
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 908
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 909
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin2:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 912
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$17;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    return-void
.end method

.method private noCkdItemChecker(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "lay"    # Landroid/widget/LinearLayout;

    .prologue
    const v1, 0x7f070040

    .line 520
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003d

    .line 521
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070036

    .line 522
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070034

    .line 523
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070038

    .line 524
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003a

    .line 525
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003e

    .line 526
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070037

    .line 527
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070035

    .line 528
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070039

    .line 529
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003b

    .line 530
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003c

    .line 531
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07003f

    .line 532
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 536
    :cond_0
    return-void
.end method

.method private onStartOverRay()V
    .locals 7

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->checkOverrayPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "jp.co.cygames.Shadowverse"

    const-string v5, "com.unity3d.player.UnityPlayerNativeActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-class v6, Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v2, "text":Landroid/widget/TextView;
    const-string v4, "\u30b7\u30e3\u30c9\u30ed\u30b0\u5e38\u99d0\u8a18\u9332\u3092\u8d77\u52d5\u3057\u307e\u3057\u305f\u3002\n\uff62\u30b7\u30e3\u30c9\u30ed\u30b0\uff63\u30dc\u30bf\u30f3\u306f\u30c9\u30e9\u30c3\u30b0\u3067\u4f4d\u7f6e\u3092\u79fb\u52d5\u3067\u304d\u307e\u3059\u3002"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 286
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 287
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 288
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 289
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "toast":Landroid/widget/Toast;
    :goto_1
    return-void

    .line 277
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 292
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Shadowverse Log\u3092\u30a2\u30d7\u30ea\u306e\u4e0a\u306b\u91cd\u306d\u3066\u8868\u793a\u3059\u308b\u8a31\u53ef\u3092\u6709\u52b9\u306b\u3057\u3066\u4e0b\u3055\u3044\u3002\u8a2d\u5b9a\u753b\u9762\u3092\u958b\u304d\u307e\u3059\u3002"

    .line 298
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/shadowlog/shadowverselog/MyPageActivity$4;

    invoke-direct {v6, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$4;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 299
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    const/4 v6, 0x0

    .line 306
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1
.end method

.method private saveAnalyzeDialogData()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "defFlag1":Z
    const/4 v1, 0x0

    .line 676
    .local v1, "defFlag2":Z
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700e7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 677
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "from"

    iget-wide v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->newpack_date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "to"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const/4 v0, 0x1

    .line 691
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    .line 692
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070040

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 694
    const/4 v1, 0x1

    .line 716
    :cond_1
    :goto_1
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 717
    iget-boolean v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    if-eqz v2, :cond_2

    .line 718
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    .line 719
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->invalidateOptionsMenu()V

    .line 728
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAnalyzeRefresh()V

    .line 729
    return-void

    .line 680
    :cond_3
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-ne v2, v6, :cond_4

    .line 681
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "from"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "to"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 683
    :cond_4
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 684
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "from"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->getUx()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v3, "to"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->getUx()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 695
    :cond_5
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 697
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 698
    :cond_6
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 700
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 703
    :cond_7
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_8
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_9
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_a
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070038

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_b
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_c
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "14"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_d
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "13"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_e
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070035

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_f
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_10
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    const-string v3, "15"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 722
    :cond_11
    iget-boolean v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    if-nez v2, :cond_2

    .line 723
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    .line 724
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->invalidateOptionsMenu()V

    goto/16 :goto_2
.end method

.method private setClickEvent()V
    .locals 5

    .prologue
    .line 188
    const v4, 0x7f0700f6

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 189
    .local v2, "overlayButton":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/MyPageActivity$2;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$2;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 195
    .local v0, "clickListener0":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v4, 0x7f0700f5

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 199
    .local v3, "recordButton":Landroid/widget/Button;
    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$3;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 205
    .local v1, "clickListener1":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private setDatePickerFunction()V
    .locals 14

    .prologue
    .line 545
    const-wide/16 v2, 0x0

    .line 546
    .local v2, "customUnixTime_From":J
    const-wide/16 v4, 0x0

    .line 551
    .local v4, "customUnixTime_To":J
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v9, v2, v3}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setUx(J)V

    .line 552
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v9, v4, v5}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->setUx(J)V

    .line 555
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0700c4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 556
    .local v1, "dateBox1":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0700c5

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 557
    .local v6, "dateBox2":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0700c6

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 558
    .local v7, "dateBox3":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0700c7

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 560
    .local v8, "dateBox4":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 563
    .local v0, "cal":Ljava/util/Calendar;
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    .line 564
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 565
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->getJx()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    .line 570
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 571
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->getJx()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_1
    new-instance v9, Lcom/shadowlog/shadowverselog/MyPageActivity$11;

    invoke-direct {v9, p0, v1}, Lcom/shadowlog/shadowverselog/MyPageActivity$11;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    new-instance v9, Lcom/shadowlog/shadowverselog/MyPageActivity$12;

    invoke-direct {v9, p0, v6}, Lcom/shadowlog/shadowverselog/MyPageActivity$12;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    new-instance v9, Lcom/shadowlog/shadowverselog/MyPageActivity$13;

    invoke-direct {v9, p0, v7}, Lcom/shadowlog/shadowverselog/MyPageActivity$13;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    new-instance v9, Lcom/shadowlog/shadowverselog/MyPageActivity$14;

    invoke-direct {v9, p0, v8}, Lcom/shadowlog/shadowverselog/MyPageActivity$14;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    return-void
.end method

.method private setViews()V
    .locals 9

    .prologue
    const v8, 0x7f0c0022

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    const v4, 0x7f0701d7

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 118
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 121
    const v4, 0x7f0701e0

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 122
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/shadowlog/shadowverselog/MyPageActivity$1;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$1;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    new-instance v0, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    sget-object v4, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, v4}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 139
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 143
    const v4, 0x7f0701c3

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 144
    .local v3, "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 147
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    sput-object v4, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 151
    new-instance v4, Landroid/support/v7/app/ActionBarDrawerToggle;

    sget-object v5, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {v4, p0, v5, v8, v8}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    sput-object v4, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 152
    sget-object v4, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget-object v5, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 153
    sget-object v4, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v4, v7}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 156
    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/NavigationView;

    .line 157
    .local v2, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v2, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 160
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 162
    const-string v4, "offline"

    invoke-virtual {v1, v4}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 163
    iput-boolean v7, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->offline_mode:Z

    .line 167
    :goto_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 169
    iget-boolean v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->offline_mode:Z

    if-nez v4, :cond_1

    .line 170
    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v5, "\u30aa\u30f3\u30e9\u30a4\u30f3 \u30e6\u30fc\u30b6\u30fc"

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 177
    :goto_1
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->showAlertMessage()V

    .line 178
    return-void

    .line 165
    :cond_0
    iput-boolean v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->offline_mode:Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v5, "\u30aa\u30d5\u30e9\u30a4\u30f3 \u30e6\u30fc\u30b6\u30fc"

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 173
    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f0700a9

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showAlertMessage()V
    .locals 4

    .prologue
    .line 978
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 979
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 980
    const-string v2, "alert_message"

    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 982
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 983
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 986
    :cond_0
    return-void
.end method


# virtual methods
.method public checkOverrayPermission()Z
    .locals 2

    .prologue
    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 312
    sget v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onStartOverRay()V

    .line 315
    :cond_0
    return-void
.end method

.method public onAllRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 215
    const-string v0, "MyPageActivity"

    const-string v1, "onAllRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 217
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->updateListData()V

    .line 218
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->updateListData()V

    .line 219
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->updateListData()V

    .line 220
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckList()V

    .line 221
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    .line 222
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->updateListData()V

    .line 223
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 224
    return-void
.end method

.method public onAnalyzeRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 226
    const-string v0, "MyPageActivity"

    const-string v1, "onAnalyzeRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 228
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->updateListData()V

    .line 229
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->updateListData()V

    .line 230
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckList()V

    .line 231
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v3}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;->findFragmentByPosition(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V

    .line 232
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 744
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 745
    sget-object v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 746
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 83
    const-string v1, "MyPageActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->setContentView(I)V

    .line 88
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "fdb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 90
    const-string v1, "newpack_date"

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->newpack_date:J

    .line 91
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    .line 95
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v2, "from"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->prieodSet:Ljava/util/HashMap;

    const-string v2, "to"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/MultUnix;-><init>()V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjFrom:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    .line 98
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/MultUnix;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/MultUnix;-><init>()V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->unixObjTo:Lcom/shadowlog/shadowverselog/struct/MultUnix;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->formatSet:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sput-object v1, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 102
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->setViews()V

    .line 103
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->setClickEvent()V

    .line 104
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->initPopupWindow()V

    .line 105
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->initPopupWindow2()V

    .line 106
    new-instance v1, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    sget-object v2, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v1, v2}, Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mypageFragmentPagerAdapter:Lcom/shadowlog/shadowverselog/adapter/MypageFragmentPagerAdapter;

    .line 108
    const-string v1, "MyPageActivity"

    invoke-static {p0, v1}, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->sendGAScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->menuAnalyzeSwitch:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "MyPageActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 264
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 993
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 994
    sget-object v1, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v2, "ChildFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 995
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "\u30a2\u30d7\u30ea\u3092\u7d42\u4e86\u3057\u3066\u5b9c\u3057\u3044\u3067\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u7d42\u4e86\u3059\u308b"

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$19;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$19;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 997
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    new-instance v3, Lcom/shadowlog/shadowverselog/MyPageActivity$18;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$18;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 1002
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1006
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1007
    const/4 v1, 0x0

    .line 1012
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v1

    .line 1009
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1012
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f070086

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 750
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 751
    .local v1, "id":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 879
    :goto_0
    const v6, 0x7f07005e

    invoke-virtual {p0, v6}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 880
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v6, 0x800003

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v10

    .line 763
    .end local v0    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    :pswitch_0
    const-string v6, "DrawerMenu"

    const-string v7, "profile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v6, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 765
    .local v3, "transaction1":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;

    move-result-object v6

    const-string v7, "ChildFragment"

    invoke-virtual {v3, v8, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 766
    invoke-virtual {v3, v9}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 767
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 771
    .end local v3    # "transaction1":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    const-string v6, "DrawerMenu"

    const-string v7, "\u3042\u306a\u305f\u306e\u6226\u7e3e\u4e00\u89a7"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 775
    :pswitch_2
    const-string v6, "DrawerMenu"

    const-string v7, "\u3042\u306a\u305f\u306e\u52dd\u7387\u89e3\u6790"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 779
    :pswitch_3
    const-string v6, "DrawerMenu"

    const-string v7, "\u30de\u30a4\u30c7\u30c3\u30ad\u7ba1\u7406"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 783
    :pswitch_4
    const-string v6, "DrawerMenu"

    const-string v7, "\u30c7\u30c3\u30ad\u5225\u306e\u52dd\u7387\u89e3\u6790"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 787
    :pswitch_5
    const-string v6, "DrawerMenu"

    const-string v7, "2PICK\u306e\u6226\u7e3e\u4e00\u89a7"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 791
    :pswitch_6
    const-string v6, "DrawerMenu"

    const-string v7, "\u5bfe\u6226\u89e3\u6790\u30ed\u30b0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 808
    :pswitch_7
    const-string v6, "DrawerMenu"

    const-string v7, "sync"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "\u30b5\u30fc\u30d0\u30fc\u3068\u30c7\u30fc\u30bf\u540c\u671f\u3092\u884c\u3044\u307e\u3059\u304b\uff1f"

    .line 810
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    new-instance v8, Lcom/shadowlog/shadowverselog/MyPageActivity$15;

    invoke-direct {v8, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$15;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 811
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Cancel"

    .line 819
    invoke-virtual {v6, v7, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 820
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 834
    :pswitch_8
    const-string v6, "DrawerMenu"

    const-string v7, "contact"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget-object v6, Lcom/shadowlog/shadowverselog/MyPageActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 836
    .local v4, "transaction2":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/ContactFragment;

    move-result-object v6

    const-string v7, "ChildFragment"

    invoke-virtual {v4, v8, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 837
    invoke-virtual {v4, v9}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 838
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 844
    .end local v4    # "transaction2":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_9
    const-string v6, "DrawerMenu"

    const-string v7, "logout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "\u30ed\u30b0\u30a2\u30a6\u30c8"

    .line 846
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u30ed\u30b0\u30a2\u30a6\u30c8\u3092\u3059\u308b\u3068\u7aef\u672b\u5185\u306e\u30c7\u30fc\u30bf\u3092\u5168\u3066\u524a\u9664\u3057\u307e\u3059\u3002\u30aa\u30f3\u30e9\u30a4\u30f3\u30e6\u30fc\u30b6\u30fc\u306e\u65b9\u306f\u3001\u518d\u30ed\u30b0\u30a4\u30f3\u5f8c\u306bWEB\u30b5\u30fc\u30d0\u30fc\u3088\u308a\u5168\u3066\u306e\u30c7\u30fc\u30bf\u3092\u518d\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u3057\u307e\u3059\u3002\u30ed\u30b0\u30a2\u30a6\u30c8\u3057\u3066\u5b9c\u3057\u3044\u3067\u3059\u304b\uff1f"

    .line 847
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    new-instance v8, Lcom/shadowlog/shadowverselog/MyPageActivity$16;

    invoke-direct {v8, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$16;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 848
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Cancel"

    .line 856
    invoke-virtual {v6, v7, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 857
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 864
    :pswitch_a
    const-string v6, "DrawerMenu"

    const-string v7, "put_twitter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.TEXT"

    const-string v7, "\u30b7\u30e3\u30c9\u30a6\u30d0\u30fc\u30b9\u306e\u6226\u7e3e\u3092\u7ba1\u7406\u3059\u308bWEB\u30b5\u30fc\u30d3\u30b9\u300eShadowverse Log\u300f\n[WEB\u7248]https://shadowlog.com/ \n[Android\u7248]https://play.google.com/store/apps/details?id=com.shadowlog.shadowverselog"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v6, "text/plain"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 874
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_b
    const-string v6, "DrawerMenu"

    const-string v7, "put_review"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/shadowlog/shadowverselog/lib/Defines;->packagename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 876
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v6}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x7f07009e
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    sget-object v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity;->popupWin:Landroid/widget/PopupWindow;

    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 352
    :pswitch_data_0
    .packed-switch 0x7f070029
        :pswitch_0
    .end packed-switch
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 884
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "MyPageActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 258
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 737
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 739
    sget-object v0, Lcom/shadowlog/shadowverselog/MyPageActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 740
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "MyPageActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 246
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "MyPageActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 240
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "MyPageActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 252
    return-void
.end method
