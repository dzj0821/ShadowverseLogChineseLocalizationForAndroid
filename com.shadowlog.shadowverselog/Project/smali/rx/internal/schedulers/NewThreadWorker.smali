.class public Lrx/internal/schedulers/NewThreadWorker;
.super Lrx/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile isUnsubscribed:Z

.field private final schedulersHook:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 36
    invoke-static {v8, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 39
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setRemoveOnCancelPolicy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_1

    .line 41
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 43
    :try_start_0
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    .line 51
    return-void

    .line 44
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 38
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/NewThreadWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 60
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/NewThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 74
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->schedulersHook:Lrx/plugins/RxJavaSchedulersHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 75
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 77
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 78
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 82
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 84
    return-object v2

    .line 80
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    .line 90
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 91
    return-void
.end method
