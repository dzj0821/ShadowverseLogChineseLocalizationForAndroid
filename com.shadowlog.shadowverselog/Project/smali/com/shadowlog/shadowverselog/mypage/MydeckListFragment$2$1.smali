.class Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;
.super Ljava/lang/Object;
.source "MydeckListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$102(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    .line 127
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    new-instance v2, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090046

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v5, v5, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v6, v6, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v6}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)V

    invoke-static {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$102(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    .line 129
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->val$listview:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->val$listview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
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

    goto :goto_0
.end method
