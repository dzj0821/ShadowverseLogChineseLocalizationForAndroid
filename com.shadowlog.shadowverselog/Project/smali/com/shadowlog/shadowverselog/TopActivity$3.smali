.class Lcom/shadowlog/shadowverselog/TopActivity$3;
.super Ljava/lang/Object;
.source "TopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/TopActivity;->initClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/TopActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/TopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/TopActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/TopActivity$3;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    const-string v2, "TopActivity"

    const-string v3, "Offline Button Click!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/TopActivity$3;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/TopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 72
    const-string v2, "offline"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 75
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/TopActivity$3;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/TopActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/TopActivity$3;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v2, v1}, Lcom/shadowlog/shadowverselog/TopActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/TopActivity$3;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/TopActivity;->finish()V

    .line 78
    return-void
.end method
