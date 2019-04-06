.class Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$1;
.super Ljava/lang/Object;
.source "Record2EditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 138
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V

    .line 142
    return-void
.end method
