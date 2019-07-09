/* eslint-disable max-len */
import { defineSupportCode } from 'cucumber';
import openWebsite from '../support/action/openWebsite';
import radialbarsClickElement from '../support/dsl/radialbarsClickElement';
// import checkEqualsText from '../support/check/checkEqualsText';

defineSupportCode(({ Given }) => {
    Given(/^I am running the drp-provision endpoint with (url|site) "([^"]*)?"$/, openWebsite);
});

defineSupportCode(({ When }) => {
    When(/^I move and (click|doubleclick) the radialbars (link|button|element) "([^"]*)?"$/, radialbarsClickElement);
});

/*
defineSupportCode(({ Then }) => {
    Then(/^the (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/, checkEqualsText);
});
*/
