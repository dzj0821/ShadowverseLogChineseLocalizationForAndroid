.class Lcom/shadowlog/shadowverselog/mypage/InformationFragment$1;
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
    .line 59
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/shadowlog/shadowverselog/lib/Defines;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
