.class Lcom/shadowlog/shadowverselog/mypage/InformationFragment$2;
.super Ljava/lang/Object;
.source "InformationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/InformationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "\u30b7\u30e3\u30c9\u30a6\u30d0\u30fc\u30b9\u306e\u6226\u7e3e\u3092\u7ba1\u7406\u3059\u308bWEB\u30b5\u30fc\u30d3\u30b9\u300eShadowverse Log\u300f\n[WEB\u7248]https://shadowlog.com/ \n[Android\u7248]https://play.google.com/store/apps/details?id=com.shadowlog.shadowverselog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
