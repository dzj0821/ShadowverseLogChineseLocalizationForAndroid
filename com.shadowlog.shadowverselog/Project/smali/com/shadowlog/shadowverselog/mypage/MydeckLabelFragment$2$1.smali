.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;
.super Ljava/lang/Object;
.source "MydeckLabelFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v5, 0x7f07009a

    const v4, 0x7f070079

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$302(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;)Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    .line 189
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    new-instance v2, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090045

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v5, v5, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v6, v6, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v6}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V

    invoke-static {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$302(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;)Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    .line 191
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->val$listview:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->val$listview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MydeckListFragment Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
