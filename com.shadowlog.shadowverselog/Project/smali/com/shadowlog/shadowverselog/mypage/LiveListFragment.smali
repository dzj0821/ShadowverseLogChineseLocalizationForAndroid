.class public Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;
.super Landroid/support/v4/app/Fragment;
.source "LiveListFragment.java"


# static fields
.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;-><init>()V

    .line 26
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string v0, "LiveListFragment"

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
    const-string v1, "LiveListFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const v1, 0x7f090038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0701e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;->mWebView:Landroid/webkit/WebView;

    .line 49
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/LiveListFragment;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://live.shadowlog.com"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "LiveListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 77
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
