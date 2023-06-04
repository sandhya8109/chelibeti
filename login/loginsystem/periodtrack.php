<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ovulation Predictor Calc in Vue</title>
  <link rel="stylesheet" href="../loginsystem/css/periodtrack.css">
  <link rel="stylesheet" href="../loginsystem/periodtrack.js">
  <link rel="stylesheet" href="https://unpkg.com/vuejs-datepicker">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.min.js">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
</head>
<body>

  <section class="hero is-primary has-text-centered">
  <div class="hero-body">
    <div class="container">
      <h1 class="title is-1">Ovulation Predictor Calculator</h1>
    </div>
  </div>
  </section>
  
  <section id="app" class="section content has-text-centered">
    
<transition name="fade" mode="out-in">
    <div class="content columns level is-centered
" v-if="!calcReturned" key="calendar">

      <div class="column is-one-third level has-text-centered ">
        <p class="subtitle">Please select the first day of your last menstrual period:</p>
        <vuejs-datepicker :inline="true" v-model="date">{{ date }}</vuejs-datepicker>
      </div>

      <div class="column is-one-third has-text-centered level">
        <p>Usual number of days in your cycle:</p>
        <div class="select is-primary">
          <select name="days" v-model="cycleSelected">
            <option v-for="n in 45" v-if="n >= 20">{{ n }}</option>
          </select>
        </div>

        <div class="level-item">
          <button class="button is-large is-primary is-rounded " id="calculate-btn" @click="startCalc(); calculateFertileBegin(); calculateFertileEnds(); calculateDueDate();">Calculate</button>
        </div>
      </div>
    </div>

    <div class="content has-text-centered" v-else key="result">

      <p class="subtitle">Here are the results based on the information you provided:</p>
      <p>Your next most fertile period is <strong>{{ fertileFrom }}</strong> to <strong>{{ fertileUntil }}</strong>.</p>
      <p>If you conceive within this timeframe, your estimated due date will be <strong>{{ dueDate }}</strong>.</p>
      <div class="level-item">
        <button class="button is-large is-primary is-rounded" id="resetCalc" @click="resetCalc">Calculate Again</button>
      </div>

    </div>
</transition>
    
    <div class="notification is-full">*Average length will vary by woman. **A woman's best days to conceive can start at least one day prior and last at least one day after fertile date.
    </div>
  </section>
</body>

</html>