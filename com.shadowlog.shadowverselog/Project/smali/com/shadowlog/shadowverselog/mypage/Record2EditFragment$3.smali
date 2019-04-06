.class Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$3;
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
    .line 167
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 171
    return-void
.end method
