.class public Lcom/shadowlog/shadowverselog/mypage/BlankFragment;
.super Landroid/support/v4/app/Fragment;
.source "BlankFragment.java"


# static fields
.field private static blankView:Landroid/view/View;

.field private static fm:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/BlankFragment;
    .locals 2

    .prologue
    .line 27
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;-><init>()V

    .line 28
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/BlankFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const-string v0, "BlankFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string v2, "BlankFragment"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const v2, 0x7f090033

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->blankView:Landroid/view/View;

    .line 51
    sget-object v2, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->blankView:Landroid/view/View;

    const v3, 0x7f0700bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/BlankFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/BlankFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/BlankFragment;)V

    .line 63
    .local v1, "clickListener0":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget-object v2, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->blankView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "BlankFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 103
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "BlankFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "BlankFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "BlankFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "BlankFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 73
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "BlankFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 91
    return-void
.end method
