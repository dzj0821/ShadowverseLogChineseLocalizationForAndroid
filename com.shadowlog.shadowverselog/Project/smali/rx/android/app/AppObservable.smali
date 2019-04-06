.class public final Lrx/android/app/AppObservable;
.super Ljava/lang/Object;
.source "AppObservable.java"


# static fields
.field private static final ACTIVITY_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Landroid/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final USES_SUPPORT_FRAGMENTS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "supportFragmentsAvailable":Z
    :try_start_0
    const-string v1, "android.support.v4.app.Fragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v0, 0x1

    .line 39
    :goto_0
    sput-boolean v0, Lrx/android/app/AppObservable;->USES_SUPPORT_FRAGMENTS:Z

    .line 42
    new-instance v1, Lrx/android/app/AppObservable$1;

    invoke-direct {v1}, Lrx/android/app/AppObservable$1;-><init>()V

    sput-object v1, Lrx/android/app/AppObservable;->ACTIVITY_VALIDATOR:Lrx/functions/Func1;

    .line 48
    new-instance v1, Lrx/android/app/AppObservable$2;

    invoke-direct {v1}, Lrx/android/app/AppObservable$2;-><init>()V

    sput-object v1, Lrx/android/app/AppObservable;->FRAGMENT_VALIDATOR:Lrx/functions/Func1;

    .line 54
    new-instance v1, Lrx/android/app/AppObservable$3;

    invoke-direct {v1}, Lrx/android/app/AppObservable$3;-><init>()V

    sput-object v1, Lrx/android/app/AppObservable;->FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;

    return-void

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindActivity(Landroid/app/Activity;Lrx/Observable;)Lrx/Observable;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 79
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/android/app/OperatorConditionalBinding;

    sget-object v2, Lrx/android/app/AppObservable;->ACTIVITY_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v1, p0, v2}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bindFragment(Ljava/lang/Object;Lrx/Observable;)Lrx/Observable;
    .locals 4
    .param p0, "fragment"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 98
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 99
    .local v1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-boolean v2, Lrx/android/app/AppObservable;->USES_SUPPORT_FRAGMENTS:Z

    if-eqz v2, :cond_0

    instance-of v2, p0, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 100
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 101
    .local v0, "f":Landroid/support/v4/app/Fragment;
    new-instance v2, Lrx/android/app/OperatorConditionalBinding;

    sget-object v3, Lrx/android/app/AppObservable;->FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v2, v0, v3}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v2

    .line 104
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v2

    .line 102
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    instance-of v2, p0, Landroid/app/Fragment;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 103
    check-cast v0, Landroid/app/Fragment;

    .line 104
    .local v0, "f":Landroid/app/Fragment;
    new-instance v2, Lrx/android/app/OperatorConditionalBinding;

    sget-object v3, Lrx/android/app/AppObservable;->FRAGMENT_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v2, v0, v3}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v2

    goto :goto_0

    .line 106
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target fragment is neither a native nor support library Fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
