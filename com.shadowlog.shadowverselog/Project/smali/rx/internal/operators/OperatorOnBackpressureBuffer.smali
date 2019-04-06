.class public Lrx/internal/operators/OperatorOnBackpressureBuffer;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final capacity:Ljava/lang/Long;

.field private final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final onOverflow:Lrx/functions/Action0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->on:Lrx/internal/operators/NotificationLite;

    .line 37
    iput-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 38
    iput-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;)V

    .line 43
    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;)V
    .locals 3
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->on:Lrx/internal/operators/NotificationLite;

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 50
    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;
    .param p1, "x1"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "x2"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p4, "x4"    # Ljava/util/Queue;
    .param p5, "x5"    # Lrx/Subscriber;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->pollQueue(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/internal/operators/NotificationLite;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .prologue
    .line 29
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->on:Lrx/internal/operators/NotificationLite;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .prologue
    .line 29
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/functions/Action0;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .prologue
    .line 29
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    return-object v0
.end method

.method private pollQueue(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V
    .locals 6
    .param p1, "wip"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "capacity"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    .local p4, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .local p5, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const-wide/16 v4, 0x0

    .line 141
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 149
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 150
    invoke-interface {p4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 172
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 156
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p3, :cond_2

    .line 157
    :try_start_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 159
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p5, v0}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v1

    .line 162
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 57
    .local v5, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 58
    .local v4, "capacity":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    .local v3, "wip":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 61
    .local v2, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/OperatorOnBackpressureBuffer$1;-><init>(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lrx/Subscriber;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 73
    new-instance v6, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;

    move-object v7, p0

    move-object v8, v5

    move-object v9, v3

    move-object v10, v2

    move-object v11, v4

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;-><init>(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Subscriber;)V

    .line 134
    .local v6, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v6}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 136
    return-object v6

    .line 57
    .end local v2    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v3    # "wip":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v4    # "capacity":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v6    # "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0
.end method
