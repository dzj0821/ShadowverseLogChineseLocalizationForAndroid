.class Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;
.super Ljava/lang/Object;
.source "Record2EditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->dataRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 350
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$302(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;Z)Z

    .line 351
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;-><init>()V

    .line 352
    .local v1, "resRst":Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->aid:Ljava/lang/Integer;

    .line 353
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->User_id:Ljava/lang/Integer;

    .line 354
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->delete_flag:Ljava/lang/Integer;

    .line 356
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 358
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 359
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 363
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-virtual {v2, v1}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/Record2pickStruct;)V

    goto :goto_0
.end method
