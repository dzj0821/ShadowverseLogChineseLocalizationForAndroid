.class final Lrx/internal/operators/OperatorMerge$MergeProducer;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MergeProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorMerge$MergeProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 497
    const-class v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    .local p1, "ms":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    .line 492
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 493
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeProducer;

    .prologue
    .line 487
    iget-wide v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    return-wide v0
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 501
    iget-wide v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 505
    iput-wide v4, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->requested:J

    goto :goto_0

    .line 507
    :cond_2
    sget-object v1, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 508
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$400(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "sendComplete":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    monitor-enter v2

    .line 511
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$500(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$600(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$600(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    const/4 v0, 0x1

    .line 514
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->ms:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->access$700(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
