.class Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final innerSubscription:Lrx/subscriptions/CompositeSubscription;

.field private final poolWorker:Lrx/schedulers/EventLoopsScheduler$PoolWorker;


# direct methods
.method constructor <init>(Lrx/schedulers/EventLoopsScheduler$PoolWorker;)V
    .locals 1
    .param p1, "poolWorker"    # Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    .prologue
    .line 75
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 72
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 76
    iput-object p1, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    .line 78
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 96
    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lrx/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 102
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 103
    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 83
    return-void
.end method
