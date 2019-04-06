.class Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 380
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    .local p1, "s":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->access$100(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->this$0:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$200(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-result-object v1

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v2

    .line 386
    .local v2, "r":J
    invoke-static {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->access$300(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)I

    move-result v0

    .line 387
    .local v0, "emitted":I
    if-lez v0, :cond_0

    .line 388
    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 390
    :cond_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 392
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 395
    .end local v0    # "emitted":I
    .end local v2    # "r":J
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber.1;"
    check-cast p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;->call(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
