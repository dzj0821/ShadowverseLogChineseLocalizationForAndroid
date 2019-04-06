.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;
.super Ljava/lang/Object;
.source "MydeckLabelFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

.field final synthetic val$listview:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 159
    new-instance v2, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 160
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from SV_MYDECK_LABEL where delete_flag=0 and Deck_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by give_date desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 164
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 166
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 167
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;-><init>()V

    .line 168
    .local v1, "mls":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;->setHash(Ljava/util/Map;)V

    .line 170
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "mls":Lcom/shadowlog/shadowverselog/struct/MydeckLabelStruct;
    :cond_0
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method
