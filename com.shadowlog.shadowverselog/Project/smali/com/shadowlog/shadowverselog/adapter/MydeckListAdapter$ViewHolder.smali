.class Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MydeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field btnAnalyze:Landroid/widget/Button;

.field btnLabel:Landroid/widget/Button;

.field btnPub:Landroid/widget/Button;

.field btnStruct:Landroid/widget/Button;

.field memo:Landroid/widget/TextView;

.field myDecktype:Landroid/widget/TextView;

.field myLeader:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
