.class public Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProfileFragment.java"


# static fields
.field private static URL:Ljava/lang/String;

.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private sessionID:Ljava/lang/String;

.field private userID:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "https://shadowlog.com/mypage/profile"

    sput-object v0, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;
    .locals 2

    .prologue
    .line 34
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;-><init>()V

    .line 35
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v1, "ProfileFragment"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 51
    const-string v1, "offline"

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u3053\u306e\u6a5f\u80fd\u306f\u30aa\u30f3\u30e9\u30a4\u30f3\u30e6\u30fc\u30b6\u30fc\u9650\u5b9a\u306e\u6a5f\u80fd\u3067\u3059\u3002"

    .line 53
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment$1;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;)V

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 60
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string v0, "ProfileFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v0, 0x7f090044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->view:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->webViewFunction(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "ProfileFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 160
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "ProfileFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 153
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "ProfileFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "MydeckChangerFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 134
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "ProfileFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 128
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "ProfileFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 146
    return-void
.end method

.method public webViewFunction(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    .line 92
    .local v0, "myWebView":Landroid/webkit/WebView;
    sget-object v1, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 101
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/ProfileFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    return-void
.end method
