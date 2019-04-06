.class Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$1;
.super Ljava/lang/Object;
.source "Record2ListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 81
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 82
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f070086

    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    return-void
.end method
