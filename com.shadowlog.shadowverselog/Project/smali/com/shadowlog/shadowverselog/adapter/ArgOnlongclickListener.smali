.class Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;
.super Ljava/lang/Object;
.source "ArgOnlongclickListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg1:I

    .line 12
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "num1"    # I
    .param p2, "num2"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg1:I

    .line 16
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg2:I

    .line 17
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "num1"    # I
    .param p2, "num2"    # I
    .param p3, "num3"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg1:I

    .line 20
    iput p2, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg2:I

    .line 21
    iput p3, p0, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;->arg3:I

    .line 22
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
