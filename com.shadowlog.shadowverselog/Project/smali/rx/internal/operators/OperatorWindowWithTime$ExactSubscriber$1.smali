.class Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->scheduleExact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    .prologue
    .line 278
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->nextWindow()V

    .line 283
    return-void
.end method
