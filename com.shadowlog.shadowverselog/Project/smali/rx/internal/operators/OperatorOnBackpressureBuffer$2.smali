.class Lrx/internal/operators/OperatorOnBackpressureBuffer$2;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureBuffer;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

.field final synthetic val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Subscriber;)V
    .locals 2
    .param p1, "this$0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private assertCapacity()Z
    .locals 8

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v4, :cond_0

    .line 129
    :goto_0
    return v2

    .line 114
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 115
    .local v0, "currCapacity":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 116
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->unsubscribe()V

    .line 118
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$child:Lrx/Subscriber;

    new-instance v4, Lrx/exceptions/MissingBackpressureException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overflowed buffer of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    .line 120
    invoke-static {v6}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$200(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 121
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-static {v2}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$300(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/functions/Action0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-static {v2}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$300(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/functions/Action0;

    move-result-object v2

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    :cond_1
    move v2, v3

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    invoke-virtual {v4, v0, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-static {v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$100(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$child:Lrx/Subscriber;

    invoke-static/range {v0 .. v5}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$000(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-static {v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$100(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$child:Lrx/Subscriber;

    invoke-static/range {v0 .. v5}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$000(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->assertCapacity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-static {v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$100(Lrx/internal/operators/OperatorOnBackpressureBuffer;)Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$wip:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$capacity:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->val$child:Lrx/Subscriber;

    invoke-static/range {v0 .. v5}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->access$000(Lrx/internal/operators/OperatorOnBackpressureBuffer;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer$2;, "Lrx/internal/operators/OperatorOnBackpressureBuffer.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer$2;->request(J)V

    .line 80
    return-void
.end method
