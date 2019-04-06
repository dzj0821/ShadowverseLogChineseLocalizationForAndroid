.class Lcom/shadowlog/shadowverselog/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MainActivity;->callbackMethod2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MainActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MainActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MainActivity$4;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MainActivity$4;->this$0:Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/MainActivity;->finish()V

    .line 145
    return-void
.end method
