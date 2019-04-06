.class Lcom/shadowlog/shadowverselog/MyPageActivity$2;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->setClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$2;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$2;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$100(Lcom/shadowlog/shadowverselog/MyPageActivity;)V

    .line 193
    return-void
.end method
