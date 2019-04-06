.class Lcom/shadowlog/shadowverselog/mypage/BlankFragment$1;
.super Ljava/lang/Object;
.source "BlankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/BlankFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/BlankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/BlankFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/BlankFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/BlankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/BlankFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/BlankFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/BlankFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 57
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f070086

    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/BlankChildFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    return-void
.end method
