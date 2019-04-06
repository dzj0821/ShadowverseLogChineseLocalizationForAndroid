.class Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber.1;"
    const-wide v4, 0x7fffffffffffffffL

    .line 61
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    monitor-enter v1

    .line 62
    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    iget-wide v2, v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    .line 67
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->drain()V

    .line 69
    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    iget-wide v2, v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
