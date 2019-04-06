.class Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$17;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/MyPageActivity$17;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 948
    const-string v1, "MyPageActivity"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$17;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$900(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;->this$1:Lcom/shadowlog/shadowverselog/MyPageActivity$17;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$900(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 951
    invoke-static {}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$000()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 952
    .local v0, "transaction1":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f070086

    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    move-result-object v2

    const-string v3, "ChildFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 953
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 954
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 956
    .end local v0    # "transaction1":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
