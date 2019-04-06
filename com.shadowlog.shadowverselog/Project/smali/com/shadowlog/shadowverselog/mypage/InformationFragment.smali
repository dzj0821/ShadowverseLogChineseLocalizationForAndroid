.class public Lcom/shadowlog/shadowverselog/mypage/InformationFragment;
.super Landroid/support/v4/app/Fragment;
.source "InformationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/InformationFragment;
    .locals 2

    .prologue
    .line 29
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;-><init>()V

    .line 30
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/InformationFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const-string v0, "InformationFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v1, "InformationFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v1, 0x7f090037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0701b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontawesome-webfont.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontawesome-webfont.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontawesome-webfont.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontawesome-webfont.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$1;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/InformationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$2;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/InformationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$3;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$3;-><init>(Lcom/shadowlog/shadowverselog/mypage/InformationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "InformationFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "BlankFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "InformationFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "InformationFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 100
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "InformationFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "InformationFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 112
    return-void
.end method
