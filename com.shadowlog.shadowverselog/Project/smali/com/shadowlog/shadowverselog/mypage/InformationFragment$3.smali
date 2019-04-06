.class Lcom/shadowlog/shadowverselog/mypage/InformationFragment$3;
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
    .line 77
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/InformationFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/InformationFragment;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/mypage/InformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 81
    .local v0, "transaction2":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f070086

    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/ContactFragment;

    move-result-object v2

    const-string v3, "ChildFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 84
    return-void
.end method
