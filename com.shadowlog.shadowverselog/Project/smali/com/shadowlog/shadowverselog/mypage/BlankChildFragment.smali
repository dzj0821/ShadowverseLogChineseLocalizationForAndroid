.class public Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;
.super Landroid/support/v4/app/Fragment;
.source "BlankChildFragment.java"


# static fields
.field private static fm:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;-><init>()V

    .line 26
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string v0, "BlankChildFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v1, "BlankChildFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v1, 0x7f090034

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0701e0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "BlankChildFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 88
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 78
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 62
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 72
    return-void
.end method
