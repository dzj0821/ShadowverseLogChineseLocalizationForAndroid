.class Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shadowlog/shadowverselog/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "splashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MainActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MainActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 197
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 199
    const-string v3, "offline"

    invoke-virtual {v0, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 200
    const/4 v2, 0x1

    .line 204
    .local v2, "offline_mode":Z
    :goto_0
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 206
    if-eqz v2, :cond_1

    .line 210
    const-string v3, "MainActivity"

    const-string v4, "Already Login -> MyPageActivity()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    const-class v4, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3, v1}, Lcom/shadowlog/shadowverselog/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MainActivity;->finish()V

    .line 239
    :goto_1
    return-void

    .line 202
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "offline_mode":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "offline_mode":Z
    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckLogin;->run(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    const-string v3, "MainActivity"

    const-string v4, "Already Login -> MyPageActivity()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    const-class v4, Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "finishActionType"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3, v1}, Lcom/shadowlog/shadowverselog/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MainActivity;->finish()V

    goto :goto_1

    .line 233
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "MainActivity"

    const-string v4, "No Login -> TopActivity()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    const-class v4, Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3, v1}, Lcom/shadowlog/shadowverselog/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MainActivity;->finish()V

    goto :goto_1
.end method
