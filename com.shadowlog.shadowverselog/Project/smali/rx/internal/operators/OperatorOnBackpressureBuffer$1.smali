.class Lrx/internal/operators/OperatorOnBackpressureBuffer$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureBuffer;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

.field final synthetic val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$1;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$1;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;->val$child:Lrx/Subscriber;

    invoke-static/range {v0 .. v5}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$000(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    .line 68
    :cond_0
    return-void
.end method
